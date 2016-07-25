from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template

class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print('our current config:')
		print(config['config'])
		print("we generate our files !")

		copy_tree(base,dest)
		images = []
		for imageName in config['linked-config']:
			image = config['linked-config'][imageName]
			image['ports']=config['imageList'][imageName]['ports']
			image['url']='http://localhost'
			images.append(image)

		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('default.conf')
		out = template.render({'images':images})
		with open(dest+"default.conf", "w") as fh:
			fh.write(out)
		with open(dest+"cert.crt",'wb') as fh:
			fh.write(config['config']['certificate'])
		with open(dest+"key.key",'wb') as fh:
			fh.write(config['config']['key'])






