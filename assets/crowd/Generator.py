from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate(self, config):
		print("we generate our files !")
		super().copy()
		config['config']['postgres'] = config['linked-config']['postgres']
		super().generate_template('crowd.properties', 'w', config['config'])
		super().generate_template('crowd.cfg.xml', 'w', config['config'])
		super().generate_template('server.xml','w',config['config'])
