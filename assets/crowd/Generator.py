from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template


class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)
		conf = dict(config)
		conf['config']['postgres'] = conf['linked-config']['postgres']
		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('crowd.properties')
		out = template.render(conf['config'])
		with open(dest+"crowd.properties", "w") as fh:
			fh.write(out)
		template = env.get_template('crowd.cfg.xml')
		out = template.render(config['config'])
		with open(dest+"crowd.cfg.xml", "w") as fh:
			fh.write(out)




