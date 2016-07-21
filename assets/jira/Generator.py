from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template


class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)

		final_config = {**dict(config['config']),**dict(config['linked-config'])}
		final_config['license'] = final_config['license'].replace('\n',' \\\n')
		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('dbconfig.xml')
		out = template.render(final_config)
		with open(dest+"dbconfig.xml", "w") as fh:
			fh.write(out)
		template = env.get_template('server.xml')
		out = template.render(final_config)
		with open(dest+"server.xml", "w") as fh:
			fh.write(out)
		template = env.get_template('Dockerfile')
		out = template.render(final_config)
		with open(dest+"Dockerfile", "w") as fh:
			fh.write(out)
		if('crowd' in final_config):
			template = env.get_template('seraph-config.xml')
			out = template.render(final_config)
			with open(dest+"seraph-config.xml", "w") as fh:
				fh.write(out)
			template = env.get_template('crowd.properties')
			out = template.render(final_config)
			with open(dest+"crowd.properties", "w") as fh:
				fh.write(out)
		









