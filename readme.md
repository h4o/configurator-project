#Configurator project
##What is configurator project
Configurator project is a tool that generates docker images and an accompanying docker-compose file.
The goal is to generate combinations of the available image configured for your need with the correct link
between them (exemple, Bitbucket with the crowd LDAP)
##What do I need?
* docker >= 1.10
* docker-compose > 1.6
* python 3.5
* PyYaml
* Jinja2
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