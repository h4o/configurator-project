from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate(self, config):
		super().copy()

		final_config = {**config['config'], **config['linked-config']}
		final_config['license'] = final_config['license'].replace('\n', ' \\\n')

		super().generate_template('bitbucket.properties', 'w', final_config)
		super().generate_template('server.xml', 'w', final_config)
		super().generate_template('Dockerfile', 'w', final_config)
		super().generate_template('setenv.sh', 'w', final_config)
		if final_config['nginx']['ssl']:
			with open(self.dest + "keystore.jks", 'wb') as fh:
				fh.write(final_config['keystore'])
