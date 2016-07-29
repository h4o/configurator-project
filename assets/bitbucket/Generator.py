from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template
import copy

class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)

		final_config = {**config['config'],**config['linked-config']}
		final_config['license'] = final_config['license'].replace('\n',' \\\n')
		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('bitbucket.properties')
		out = template.render(final_config)
		with open(dest+"bitbucket.properties", "w") as fh:
			fh.write(out)
		template = env.get_template('server.xml')
		out = template.render(final_config)
		with open(dest+"server.xml", "w") as fh:
			fh.write(out)
		template = env.get_template('Dockerfile')
		out = template.render(final_config)
		with open(dest+"Dockerfile", "w") as fh:
			fh.write(out)
		template = env.get_template('setenv.sh')
		out = template.render(final_config)
		with open(dest+"setenv.sh", "w") as fh:
			fh.write(out)
		if(final_config['nginx']['ssl']):
			with open(dest+"keystore.jks",'wb') as fh:
				fh.write(final_config['keystore'])









