from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template

class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print(config['linked-config'])
		print(config['imageList'])
		print("we generate our files !")

		copy_tree(base,dest)
		images = []
		for imageName in config['linked-config']:
			image = config['linked-config'][imageName]
			image['port']=config['imageList'][imageName]['port']
			image['url']='http://localhost'
			images.append(image)

		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('default.conf')
		out = template.render({'images':images})
		with open(dest+"default.conf", "w") as fh:
			fh.write(out)







