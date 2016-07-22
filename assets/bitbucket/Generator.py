from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template
import copy

class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)

		final_config = {**copy.deepcopy(config['config']),**copy.deepcopy(config['linked-config'])}
		final_config['license'] = final_config['license'].replace('\n',' \\\n')
		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('bitbucket.properties')
		out = template.render(final_config)
		with open(dest+"bitbucket.properties", "w") as fh:
			fh.write(out)
		









