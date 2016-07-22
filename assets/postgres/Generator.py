from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template


class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)
		conf = dict(config)
		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('Dockerfile')
		if('bitbucket' in  conf['linked-config']):
			conf['config']['bitbucket'] = conf['linked-config']['bitbucket']
			conf['config']['bitbucket']['license'] = conf['config']['bitbucket']['license'].replace('\n','\\')
		if('jira' in  conf['linked-config']):
			conf['config']['jira'] = conf['linked-config']['jira']
			conf['config']['jira']['license'] = conf['config']['jira']['license'].replace('\n','\\')
		if('crowd' in conf['linked-config']):
			conf['config']['crowd'] = conf['linked-config']['crowd']
		conf['config']['nginx'] = conf['linked-config']['nginx']
		out = template.render(config['config'])
		with open(dest+"Dockerfile", "w") as fh:
			fh.write(out)
		template = env.get_template('init-user-db.sh')
		out = template.render(config['config'])
		with open(dest+"init-user-db.sh", "w") as fh:
			fh.write(out)
		if('bitbucket' in conf['linked-config']):
			template = env.get_template('bitbucket.sql')
			out = template.render(config['config'])
			with open(dest+"bitbucket.sql", "w") as fh:
				fh.write(out)
		if('crowd' in conf['linked-config']):
			template = env.get_template('crowd.sql')
			out = template.render(config['config'])
			with open(dest+"crowd.sql", "w") as fh:
				fh.write(out)
		if('jira' in conf['linked-config']):
			template = env.get_template('jira.sql')
			out = template.render(config['config'])
			with open(dest+"jira.sql", "w") as fh:
				fh.write(out)



