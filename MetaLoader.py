import yaml


class MetaLoader:
	def __init__(self,base):
		self.base = base
		self.meta = self.load()

	def load(self):
		base = self.base
		meta = {}
		with open(base + "meta.yml", "r") as stream:
			try:
				meta = yaml.load(stream)
			except yaml.YAMLError as exc:
				print(exc)
			else:
				pass
			finally:
				return meta
				pass
	def getConnectors(self):
		connectors = []
		for connector in self.meta:
			if connector != 'required' and connector != 'version' and connector != 'meta':
				connectors.append(connector)
		return connectors

	def getRequiredData(self,connector = 'required'):
		requiredData = {}
		if self.meta[connector]:
			for required in self.meta[connector]:
				if(required != "files" and required != 'images'):
					requiredData[required] = self.meta['required'][required]
		return requiredData

	def getMeta(self):
		meta = dict(self.meta['meta'])
		print(meta)
		if('volumes' in meta and meta['volumes']):
			volumes = meta['volumes']
			meta['volumes'] = []
			for volume in volumes:
				print(volume)
				volumeInfo = volume.split(':')
				meta['volumes'].append({'name':volumeInfo[0],'dir':volumeInfo[1]})
		return meta

	def getRequiredImages(self):

		if self.meta['required'] and 'images' in  self.meta['required']:
				return self.meta['required']['images']
		return []
