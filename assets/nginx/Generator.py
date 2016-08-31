from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate(self, config):

		super().copy()
		images = []
		print('HELLO LET ME PRESENTMAHSELF I\'M NGINX DO YOU LIKE ME?')
		for imageName in config['linked-config']:
			image = config['linked-config'][imageName]
			image['ports'] = config['imageList'][imageName]['ports']
			image['url'] = 'http://localhost'
			images.append(image)
		if bool(config['config']['redirect_to']) & (config['config']['redirect_to'] in config['linked-config']):
			print("redirect to" + config['config']['redirect_to'])
			config['config']['redirection'] = True
		else:
			print("we don't redirect")
			config['config']['redirection'] = False
		super().generate_template('default.conf', 'w', {'images': images, 'ssl': config['config']['ssl'],'redirect_to':config['config']['redirect_to'],'redirection':config['config']['redirection']})
		super().generate_template('Dockerfile', 'w', config['config'])
		if config['config']['ssl']:
			with open(self.dest + "cert.crt", 'wb') as fh:
				fh.write(config['config']['certificate'])
			with open(self.dest + "key.key", 'wb') as fh:
				fh.write(config['config']['key'])
