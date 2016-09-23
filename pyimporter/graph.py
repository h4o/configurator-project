from neo4j.v1 import GraphDatabase, basic_auth
import csv
import yaml
from  urllib.request import urlopen
from urllib.error import HTTPError
from urllib.parse import urlencode
import urllib
from agithub.GitHub import GitHub
import time

import json

github_url='/repos/%s/forks'

def analyze(i):
	info = {'name':str(i),'version':0,'line_number':0,'service_built':0,'service_nb':0}
	data = {}
	try:
		print('Opening '+str(i)+'...')
		with open("output/"+str(i)+ ".yml", "r") as stream:
			ctn = stream.read()
			n =  len(ctn.split('\n'))
			info['line_number'] = n
			try:
				data = yaml.load(ctn)
			except yaml.YAMLError as exc:
				pass
			if data:
				if 'version' in data and str(data['version']).startswith('2'):
					info['version'] = 2
					if 'services' in data :
						info['service_nb'] = len(data['services'])
						serviceBuilt = 0
						for service in data['services']:
							if 'build' in service:
								serviceBuilt += 1
						info['service_built'] = serviceBuilt
					else:
						info['service_built'] = 0
						info['service_nb'] = 0

				else:
					info['version'] = 1
					serviceNb = len(data)
					serviceBuilt = 0
					for service in data:
						if 'build' in service:
							serviceBuilt += 1
					if 'networks' in data:
						serviceNb -= 1
					if 'version' in data:
						serviceNb += 1
					info['service_built'] = serviceBuilt
					info['service_nb'] = serviceNb
			print('done')
	except OSError:
		pass
	except UnicodeDecodeError:
		pass

	return info

driver = GraphDatabase.driver("bolt://localhost", auth=basic_auth("neo4j", "admin"))
session = driver.session()
repos = {}
dates = {}
with open('output.csv','r') as datasource:
	reader = csv.reader(datasource,delimiter=',')
	for row in reader:
		dates[row[0]] = row[1]
with open('results-1.csv') as datasource:
	reader = csv.reader(datasource,delimiter=',')
	count = 0
	precrepo = ''
	for row in reader:
		if row[0] not in repos:
			repos[row[0]] = []
		repos[row[0]].append(analyze(count))
		if str(count) in dates:
			repos[row[0]][-1]['timestamp'] = dates[str(count)]
		count += 1

for repo in repos:
	request= "CREATE (r:Repository {name: '"+repo+"'})\n"
	for i in range(0,len(repos[repo])):
		r = repos[repo][i]
		print(r)
		#{"version": 1, "service_nb": 20, "name": "96", "line_number": 334, "service_built": 0}
		timestamp = "-1"
		if 'timestamp' in r:
			timestamp = str(r['timestamp'])
		info = "version: "+str(r['version'])+", name:\""+str(r['name'])+"\", line_number:"+str(r['line_number'])+", service_built:"+str(r['service_built'])
		info += ", copy:False, timestamp:"+timestamp

		request += "CREATE (f"+repos[repo][i]['name']+":File {"+info+"})"
		request += "\n"
	request += "CREATE \n"
	for i in range(0,len(repos[repo])):
		request += "(f"+repos[repo][i]['name']+")-[:FILE_IN]->(r)"
		if i < len(repos[repo])-1:
			request += ","
		request += "\n"
	request += ";"
	print(request)
	print('running request')
	session.run(request)
	print('done')
g = GitHub(token='cd4cd53f01aa2dc46d96c0b8d517f31d0a7e758d')
size = len(repos)
i = 0
for repo in repos:
	print("##"+str(i)+"/"+str(size)+"## "+repo)
	if '/' in repo:
		user, rep = repo.split('/',1)
		print('Getting info for repos '+rep+ ' and user '+user)
		try:
			code, response = g.repos[user][rep].forks.get()
			print('code :'+str(code))
			if code == 200:
				for remote in response:
					print(remote['full_name'])
					print("FOUND FORK")
					request = "MATCH (r1:Repository {name:'"+remote['full_name']+"'}), (r2:Repository {name:'"+repo+"'}) create (r1)-[:FORK_OF]->(r2)"
					print(request)
					session.run(request)
			time.sleep(5000/3600)
		except TimeoutError as T:
			print(T)
			pass

	i += 1
	#except

####first step: we create a database with all repositories
# session.run("""CREATE (r:Repository {name: 'blah'})
# 			   CREATE (a:File {name:'3.yml', creationTime:33333333, size:33,version:2,serviceNumber:5,selfMadeServices:0, copy: False} 
# 			   CREATE (a)-[:FILE_IN {}]->(r)""")
##third step: we iterate over repositories and find all forks to mark them as that

##fourth stem: we find all forks using the github api and mark them in the db


##fifth step: we compare each yml to their forked version and mark copies

result = session.run("MATCH (a:Person) WHERE a.name = 'Arthur' RETURN a.name AS name, a.title AS title")
for record in result:
  print("%s %s" % (record["title"], record["name"]))

session.close()