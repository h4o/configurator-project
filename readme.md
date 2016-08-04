#Configurator project
##What is configurator project
Configurator project is a tool that generates docker images and an accompanying docker-compose file.
The goal is to generate combinations of the available image configured for your need with the correct link
between them (example, Bitbucket with the crowd LDAP)


##What do I need?
* docker >= 1.10
* docker-compose > 1.6
* python 3.5
* PyYaml
* Jinja2
* Passlib

To install Passlib, Jinja2 and PyYaml you must une pip
Either with
```bash
sudo pip install PyYaml
sudo pip install Jinja2
sudo pip install Passlib
```
Or with
```bash
sudo Python3.5 -m pip install PyYaml
sudo Python3.5 -m pip install Jinja2
sudo Python3.5 -m pip install Passlib
```
If you can't find a build of Python3.5 for your OS I recommend using pyenv

##How do I use it ?
Beforehand you need to build all the containers available in the folder images
```bash
sh ./images/build-all.sh 
```
To use the interactive prompt for configuration:
```bash
python3.5 config.py -i image1 image2
```
To use a configuration file:
```bash
python3.5 config.py -c conf.yml -i image1 image2
```
you can find a sample configuration file in the repository
To launch the resulting compose file:
in the output folder:
```bash
sh up.sh
```

##What is the format of the configuration file ?

The configuration file is a simple yaml document containing the different data necessary for the generation of image
Optional info is not yet well supported so every information is asked for, if you think something is useless (like ssl certificate with ssl de-activated) just give dummy information
There is for now 4 type of data that can be put in the configuration files
 * string
 * boolean
 * ascii file
 * binary file
More are to come depending on our needs.
Here is a exemple of a configuration file:
```yaml
common:
  baseUrl: 'http://localhost'
  username: 'crowd'
  first_name: 'firstname'
  last_name: 'lastname'
  password: 'password'
  mail: 'mail'
crowd:
    license: 'crowd.license'
    subdirectory: 'crowd'
jira:
  license: 'jira.license'
  subdirectory: 'jira'

```
Note that this isn't a complete file as some data is missing and the postgres and nginx configuration are missing too.
There is two part in this file:
* the common containing the data shared between every component
* specific subparts for each image
Data in a specific part will replace common data so you can still have special cases.

### Special case, the ip configuration
We use a sub network in the 173.17.0.0/16 range to attribute the different ips to each image so that we can address the in the subnetwork directly when necessary (e.g the proxy configuration and crowd's trusted applications) but in the default state a new different ip configuration will be generated each time you launch the tool which you may not want because you then either have to manually change the database or erase it to get crowd to work again. A solution we devised is simple: you can fix the ip of a service in 
the conf.yml file, just add "ip: number" where number is the last part of the ip you want it to use in the specific configuration of each image.

##What do I need to know ?
This is an early alpha version of the project that has yet to be production tested.

Volumes are created for each image and placed in the folder /etc/data.

If crowd is enabled the Jira adminstrator won't be able to login.

##What are the available images ?
* Jira
* Bitbucket
* Crowd

##What kind of configuration is put in place?
Each image is set up with the given license, the certificate and the keystore if needed. An admin account is created for each separate image with the given credentials. 

Some link are put in place:
If crowd is here, jira and bitbucket will be configured to use it as a central login authority. 
If jira and bitbucket are here, an applink is created between them. Unfortunately the applink does not seem to work for now and you need to set it up manually. 