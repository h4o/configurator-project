#!/bin/python3
import sys
import os
import argparse
from MetaLoader import MetaLoader
from pydoc import locate
from jinja2 import Environment, FileSystemLoader,Template
import yaml
import copy



def iterateDependency(imgs):
	imageList = {}
	while imgs:#an empty list is falsey
		imgSwp = []
		for img in imgs:
			
			if(img != 'config.py'):
				imageList[img] =  MetaLoader('assets/'+img+'/')
				if imageList[img].getRequiredImages():
					for image in imageList[img].getRequiredImages():
						if image not in imgs and image not in imageList and image not in imgSwp:
							imgSwp.append(image);
		imgs = imgSwp

	return imageList

def askForConfig(imageList,configFile):
	base_ip = '173.17.0.'
	ip = 2
	configList = {'global':{}}
	configInfo = {}
	config = {}
	configData = {}
	if(configFile):
		with open(configFile,"r") as stream:
			try:
				configData = yaml.load(stream)
			except yaml.YAMLError as exc:
				print(exc)

	for image in imageList:
		configInfo[image] = imageList[image].getRequiredData()			
	for el in configInfo:
		print('asking config for image '+el)
		config[el] = {}
		config[el]['ip'] = base_ip+str(ip)
		ip += 1
		for quest in configInfo[el]:
			if(configFile and el in configData and quest in configData[el]):
				config[el][quest] = configData[el][quest]
			else:
				config[el][quest] = input(quest + "?")
			
			if 'from' in configInfo[el][quest] and configInfo[el][quest]['from'] == 'filesystem':
				readType = 'r'
				if configInfo[el][quest]['type'] == 'binary':
					readType = 'rb'
				try:
					with open(config[el][quest], readType) as content_file:
						config[el][quest] = content_file.read()
				except Exception as E:
					if(configInfo[el][quest]['necessary']):
						raise E
					else:
						pass




	return config

def callGenerators(imageList,config):
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
		print("connectors: "+str(imageList[image].getConnectors()))
		for connector in imageList[image].getConnectors():
			print('searching for connector '+connector)
			if connector in imageList:
				data['linked-config'][connector]= config[connector]
		###we use reflexivity to load the generator pertaining to the image

		g = locate('assets.'+image+'.Generator')
		gen = g.Generator()
		gen.generate(copy.deepcopy(data),'assets/'+image+'/','output/'+image+'/')

def generateComposition(imageList,config):
	imageNameList = list(imageList.keys())
	imageMeta = []
	for name in imageNameList:
		meta = imageList[name].getMeta()
		meta['name'] = name
		meta['ip'] = config[name]['ip']
		imageMeta.append(meta)
	print('====================META==============')
	print(imageMeta)
	env = Environment(loader=FileSystemLoader('template'))
	template = env.get_template('docker-compose.yml')
	out = template.render({'images':imageMeta})
	with open("output/docker-compose.yml", "w") as fh:
		fh.write(out)
	template = env.get_template('up.sh')
	out = template.render({'images':imageMeta})
	with open("output/up.sh", "w") as fh:
		fh.write(out)
	

parser = argparse.ArgumentParser(description='Generates image and docker composition for you using its assets')
parser.add_argument('-c','--config',help='Configuration file for options')
parser.add_argument('-i','--images',help='Images to use',action='append',nargs='*',required=True)
args = parser.parse_args()
print(args)
print("################################")
print("Scanning the images...")
imageList = iterateDependency(args.images[0])
print("################################")
print("Configuration Step")
config = askForConfig(imageList,args.config)
print("################################")
print("Generating the image's files")
callGenerators(imageList,config)
print("################################")
print("Generating the docker-compose file")
generateComposition(imageList,config)



