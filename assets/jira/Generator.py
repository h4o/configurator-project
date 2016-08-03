from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader, Template
from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate(self, config):
		super().copy()

		final_config = {**dict(config['config']), **dict(config['linked-config'])}
		final_config['license'] = final_config['license'].replace('\n', ' \\\n')

		super().generate_template('dbconfig.xml', 'w', final_config)
		super().generate_template('server.xml', 'w', final_config)
		super().generate_template('Dockerfile', 'w', final_config)
		super().generate_template('setenv.sh', 'w', final_config)


		if 'crowd' in final_config:
			super().generate_template('seraph-config.xml', 'w', final_config)
			super().generate_template('crowd.properties', 'w', final_config)
		if final_config['nginx']['ssl']:
			with open(super().dest + "keystore.jks", 'wb') as fh:
				fh.write(final_config['keystore'])
