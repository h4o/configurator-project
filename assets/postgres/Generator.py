from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader,Template
import copy
import passlib.hash

class Generator:
	def __init__(self):
		pass



	def generate(self,config,base,dest):
		print("we generate our files !")
		copy_tree(base,dest)


		env = Environment(loader=FileSystemLoader(dest+'template'))
		template = env.get_template('Dockerfile')
		if('bitbucket' in  config['linked-config']):
			config['config']['bitbucket'] = config['linked-config']['bitbucket']
			config['config']['bitbucket']['license'] = config['config']['bitbucket']['license'].replace('\n','\\')
		if('jira' in  config['linked-config']):
			config['config']['jira'] = config['linked-config']['jira']
			config['config']['jira']['license'] = config['config']['jira']['license'].replace('\n','\\')
			config['config']['jira']['l_first_name'] = config['config']['jira']['first_name'].lower()
			config['config']['jira']['l_last_name'] = config['config']['jira']['last_name'].lower()
			config['config']['jira']['password'] = passlib.hash.atlassian_pbkdf2_sha1.encrypt(config['config']['jira']['password'])
		if('crowd' in config['linked-config']):
			config['config']['crowd'] = config['linked-config']['crowd']
			config['config']['crowd']['l_username'] = config['config']['crowd']['username'].lower()
			config['config']['crowd']['l_first_name'] = config['config']['crowd']['first_name'].lower()
			config['config']['crowd']['l_last_name'] = config['config']['crowd']['last_name'].lower()
			config['config']['crowd']['password'] = passlib.hash.atlassian_pbkdf2_sha1.encrypt(config['config']['crowd']['password'])

		print('+++++++++++++++++++++++++++++++++++++++')
		print(config['config'])
		print('++++++++++++++++++++++++++++++++++++++++')

		config['config']['nginx'] = config['linked-config']['nginx']
		out = template.render(config['config'])
		with open(dest+"Dockerfile", "w") as fh:
			fh.write(out)
		template = env.get_template('init-user-db.sh')
		out = template.render(config['config'])
		with open(dest+"init-user-db.sh", "w") as fh:
			fh.write(out)
		if('bitbucket' in config['linked-config']):
			template = env.get_template('bitbucket.sql')
			out = template.render(config['config'])
			with open(dest+"bitbucket.sql", "w") as fh:
				fh.write(out)
		if('crowd' in config['linked-config']):
			template = env.get_template('crowd.sql')
			out = template.render(config['config'])
			with open(dest+"crowd.sql", "w") as fh:
				fh.write(out)
		if('jira' in config['linked-config']):
			template = env.get_template('jira.sql')
			out = template.render(config['config'])
			with open(dest+"jira.sql", "w") as fh:
				fh.write(out)



