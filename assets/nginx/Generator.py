from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate(self, config):

		super().copy()
		images = []
		for imageName in config['linked-config']:
			image = config['linked-config'][imageName]
			image['ports'] = config['imageList'][imageName]['ports']
			image['url'] = 'http://localhost'
			images.append(image)

		super().generate_template('default.conf', 'w', {'images': images, 'ssl': config['config']['ssl']})
		super().generate_template('Dockerfile', 'w', config['config'])
		if config['config']['ssl']:
			with open(self.dest + "cert.crt", 'wb') as fh:
				fh.write(config['config']['certificate'])
			with open(self.dest + "key.key", 'wb') as fh:
				fh.write(config['config']['key'])
