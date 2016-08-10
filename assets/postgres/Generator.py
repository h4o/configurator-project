from distutils.dir_util import copy_tree
from jinja2 import Environment, FileSystemLoader, Template
import copy
import passlib.hash
from AbstractGenerator import AbstractGenerator


class Generator(AbstractGenerator):
	def __init__(self, base, dest):
		super().__init__(base, dest)
		pass

	def generate_config(self, data):
		data['password'] = passlib.hash.atlassian_pbkdf2_sha1.encrypt(data['password'])
		data['l_first_name'] = data['first_name'].lower()
		data['l_last_name'] = data['last_name'].lower()
		data['l_username'] = data['username'].lower()
		return data

	def generate(self, config):
		print("we generate our files !")
		super().copy()

		if 'bitbucket' in config['linked-config']:
			config['config']['bitbucket'] = self.generate_config(config['linked-config']['bitbucket'])
			config['config']['bitbucket']['license'] = config['config']['bitbucket']['license'].replace('\n', '\\')
		if 'jira' in config['linked-config']:
			config['config']['jira'] = self.generate_config(config['linked-config']['jira'])
			config['config']['jira']['license'] = config['config']['jira']['license'].replace('\n', '\\')

		if 'crowd' in config['linked-config']:
			config['config']['crowd'] = self.generate_config(config['linked-config']['crowd'])
			config['config']['crowd']['polytech_api_password'] = passlib.hash.atlassian_pbkdf2_sha1.encrypt(config['config']['crowd']['polytech_api_password'])

		config['config']['nginx'] = config['linked-config']['nginx']
		super().generate_template('Dockerfile', 'w', config['config'])
		super().generate_template('init-user-db.sh', 'w', config['config'])
		if 'bitbucket' in config['linked-config']:
			super().generate_template('bitbucket.sql', 'w', config['config'])
		if 'crowd' in config['linked-config']:
			super().generate_template('crowd.sql', 'w', config['config'])
		if 'jira' in config['linked-config']:
			super().generate_template('jira.sql', 'w', config['config'])
