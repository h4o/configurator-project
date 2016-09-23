import yaml
import csv



def main():
	numberOfFile = 19034
	average = 0
	maxL = 0
	minL = 3000000000
	versionCounter = 0
	serviceNumber = 0
	buildNumber = 0
	infos = []
	for i in range(0,numberOfFile+1):
		info = {}
		data = {}
		info['file'] = i
		try:
			print('Opening '+str(i)+'...')
			with open("output/"+str(i)+ ".yml", "r") as stream:
				ctn = stream.read()
				n =  analyzeFile(ctn)
				info['line number'] = n

				average = average + n
				if n > maxL:
					maxL = n
				if n < minL:
					minL = n
				try:
					data = yaml.load(ctn)
				except yaml.YAMLError as exc:
					pass
				if data:
					if 'version' in data and str(data['version']).startswith('2'):
						versionCounter += 1
						info['version'] = 2
						if 'services' in data :
							serviceNumber += len(data['services'])
							info['service #'] = len(data['services'])
							serviceBuilt = 0
							for service in data['services']:
								if 'build' in service:
									buildNumber += 1
									serviceBuilt += 1
							info['service built'] = serviceBuilt
						else:
							info['service built'] = 0
							info['service #'] = 0

					else:
						info['version'] = 1
						serviceNb = len(data)
						serviceBuilt = 0
						for service in data:
							if 'build' in service:
								buildNumber += 1
								serviceBuilt += 1
						if 'networks' in data:
							serviceNb -= 1
						if 'version' in data:
							serviceNb += 1
						serviceNumber += serviceNb
						info['service built'] = serviceBuilt
						info['service #'] = serviceNb
				infos.append(info)
				print('done')
		except OSError:
			pass
		except UnicodeDecodeError:
			pass

	average = average/numberOfFile
	pc = versionCounter/numberOfFile * 100
	dates = {}
	with open('output.csv','r') as datasource:
			reader = csv.reader(datasource,delimiter=',')
			for row in reader:
				dates[row[0]] = row[1]
	for i in range(0,len(infos)):
		if str(i) in dates:
			infos[i]['last update'] = dates[str(i)]
	with open('data.csv', 'w') as csvfile:
			fieldnames = ['file','line number','version', 'service #','service built','last update']
			writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

			writer.writeheader()
			for info in infos:
				writer.writerow(info)
			csvfile.close()

	print("")
	print("Average number of lines:"+str(average))
	print("Max number of lines:"+str(maxL))
	print("Min number of lines:"+str(minL))
	print("Percentage of version 2:"+str(pc)+"%")
	print('average number of services: '+str(serviceNumber/numberOfFile))
	print("Percentage of service directly built "+ str(buildNumber/serviceNumber * 100))


def analyzeFile(text):
	return len(text.split('\n'))

if __name__ == '__main__':
	main()