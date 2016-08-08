#!/bin/python3
import argparse
from MetaLoader import MetaLoader
from pydoc import locate
from jinja2 import Environment, FileSystemLoader, Template
import yaml
import copy


def iterateDependency(imgs):
	imageList = {}
	while imgs:  # an empty list is falsey
		imgSwp = []
		for img in imgs:

			if img != 'config.py':
				imageList[img] = MetaLoader('assets/' + img + '/')
				if imageList[img].getRequiredImages():
					for image in imageList[img].getRequiredImages():
						if image not in imgs and image not in imageList and image not in imgSwp:
							imgSwp.append(image)
		imgs = imgSwp

	return imageList
def genIp(configInfo,configData,config):
	base_ip = '173.17.0.'
	ip = 1
	ips = []
	for el in configInfo:
		config[el] = {}
		if configData and 'ip' in configData[el] and configData[el]['ip'] >= 1:
			if not configData[el]['ip'] in ips:
				ips.append(configData[el]['ip'])
				config[el]['ip'] = base_ip + str(configData[el]['ip'])
			else:
				raise Exception('ip conflict detected for ip '+str(configData[el]['ip']))
	print("ips:"+str(ips))
	for el in configInfo:
		if 'ip' not in config[el]:
			if not ip in ips:
				print(str(ip)+ " not in "+str(ips))
				config[el]['ip'] = base_ip + str(ip)
				ips.append(ip)
				ip += 1
			else:
				config[el]['ip'] = base_ip  + str(minIp(ips))
				ip += 1

def minIp(ips):
	ips.sort()
	N = len(ips)
	print('finding min ip')
	print(str(ips)+ " of len"+str(N))
	if N >= 253:
		raise Exception('all ip range used')
	for cursor in range(N):
		print('check for '+str(cursor))
		if ips[cursor] != cursor+1:
			print(str(ips[cursor])+' != '+str(cursor+1))
			ips.append(cursor+1)
			return cursor+1
	ips.append(N)
	return N


def askForConfig(imageList, configFile):
	configInfo = {}
	config = {}
	configData = {}
	if (configFile):
		with open(configFile, "r") as stream:
			try:
				configData = yaml.load(stream)
			except yaml.YAMLError as exc:
				print(exc)
	config['common'] = {}
	if configFile and 'common' in configData and 'volumes_from' in configData['common']:
		config['common']['volumes'] = configData['common']['volumes_from']
	else:
		config['common']['volumes'] = '/etc/data/'
	for image in imageList:
		configInfo[image] = imageList[image].getRequiredData()
	genIp(configInfo,configData,config)
	for el in configInfo:
		nameshown = False
		for quest in configInfo[el]:
			if configFile and el in configData and quest in configData[el]:
				config[el][quest] = configData[el][quest]
			elif configFile and 'common' in configData and quest in configData['common']:
				config[el][quest] = configData['common'][quest]
			else:
				if not nameshown:
					print(el+":")
					nameshown = True
				dataType = ""
				if 'from' in configInfo[el][quest] and configInfo[el][quest]['from'] == 'filesystem':
					dataType = " (file) "
					if configInfo[el][quest]['type'] == 'binary':
						dataType = " (binary file) "
				config[el][quest] = input(quest + dataType + "? ")

			if 'from' in configInfo[el][quest] and configInfo[el][quest]['from'] == 'filesystem':
				readType = 'r'
				if configInfo[el][quest]['type'] == 'binary':
					readType = 'rb'
				try:
					with open(config[el][quest], readType) as content_file:
						config[el][quest] = content_file.read()
				except Exception as E:
					if configInfo[el][quest]['necessary']:
						raise E
					else:
						pass

	return config


def callGenerators(imageList, config):
	###we save data in a dict
	###there is 3 parts:
	### imageList: the list of image that are to be deployed
	### linked conf: configuration required for other images of the current image
	### conf: the image's const
	imageNameList = list(imageList.keys())
	imageMeta = {}
	for name in imageNameList:
		imageMeta[name] = imageList[name].getMeta()
	for image in imageList:
		####we generate the data required for this image
		data = {}
		data['imageList'] = imageMeta
		data['config'] = config[image]
		data['linked-config'] = {}
		print("connectors: " + str(imageList[image].getConnectors()))
		for connector in imageList[image].getConnectors():
			print('searching for connector ' + connector)
			if connector in imageList:
				data['linked-config'][connector] = config[connector]
		###we use reflexivity to load the generator pertaining to the image
		print('CALLING GENERATOR FOR ' + image)
		g = locate('assets.' + image + '.Generator')
		gen = g.Generator('assets/' + image + '/', 'output/' + image + '/')
		gen.generate(copy.deepcopy(data))


def generateComposition(imageList, config):
	imageNameList = list(imageList.keys())
	imageMeta = []
	for name in imageNameList:
		meta = imageList[name].getMeta()
		meta['name'] = name
		meta['ip'] = config[name]['ip']
		meta['volumes_from'] = config['common']['volumes']
		imageMeta.append(meta)
	env = Environment(loader=FileSystemLoader('template'))
	template = env.get_template('docker-compose.yml')
	out = template.render({'images': imageMeta})
	with open("output/docker-compose.yml", "w") as fh:
		fh.write(out)
	template = env.get_template('up.sh')
	out = template.render({'images': imageMeta})
	with open("output/up.sh", "w") as fh:
		fh.write(out)

if __name__ == '__main__':

	parser = argparse.ArgumentParser(description='Generates image and docker composition for you using its assets')
	parser.add_argument('-c', '--config', help='Configuration file for options')
	parser.add_argument('-i', '--images', help='Images to use', action='append', nargs='*', required=True)
	args = parser.parse_args()
	print(args)
	print("################################")
	print("Scanning the images...")
	imageList = iterateDependency(args.images[0])
	print("################################")
	print("Configuration Step")
	config = askForConfig(imageList, args.config)
	print("################################")
	print("Generating the image's files")
	callGenerators(imageList, config)
	print("################################")
	print("Generating the docker-compose file")
	generateComposition(imageList, config)
