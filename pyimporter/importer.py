from git import Repo
import shutil
import os
import csv
import argparse
import urllib.request


def getRepo(tmp,dest,extension,filepath,reponame,count,baseurl,clone):
	print("#"+str(count)+" cloning from "+baseurl+reponame+"...")
	ext = ".yml"
	try:
		response = urllib.request.urlopen(baseurl+reponame)
		if response.getcode() != 200:
			print("Error loading repository")
			return -1
	except:
		print("Error loading repository")
		return -1
	if clone:
		if os.path.exists(tmp):
		    shutil.rmtree(tmp)
		repo = Repo.clone_from(baseurl+reponame+".git",tmp)
	else:
		repo = Repo(tmp)
		print("data already in cache")
	timestamp = repo.git.log("-1",  "--format=%at",filepath)
	shutil.copyfile(os.path.join(tmp,filepath),os.path.join(dest,str(count)+ext))
	print("done")
	return timestamp

def main():
	parser = argparse.ArgumentParser(description='')
	parser.add_argument('-f', '--file', help='File to load data from', action='append', nargs='*', required=True)
	parser.add_argument('-b', '--begin', help='Start value for the counter')
	parser.add_argument('-s','--start', help='Start point')
	args = parser.parse_args()
	count = 0
	begin = 0
	start = 1
	if args.begin:
		begin = int(args.begin)
	if args.start:
		start = int(args.start)
	for file in args.file:

		with open(file[0]) as datasource:
			reader = csv.reader(datasource,delimiter=',')
			count = 0
			precrepo = ''
			with open('output.csv','a') as output:
				writer = csv.writer(output)
				for row in reader:
					if count >= start:
						try:
							cache = False
							timestamp = getRepo("tmp","output",".yml",row[1],row[0],count+begin-1,"https://github.com/",(row[0] != precrepo))
							writer.writerow([str(count+begin-1),timestamp])
						except Exception as e:
							print(e)
							pass
						precrepo = row[0]
					count += 1



if __name__ == '__main__':
	main()