#Configurator project
##What is configurator project
Configurator project is a tool that generates docker images and an accompanying docker-compose file.
The goal is to generate combinations of the available image configured for your need with the correct link
between them (exemple, Bitbucket with the crowd LDAP)
##What do I need?
docker >= 1.10
docker-compose > 1.6
python 3.5
PyYaml
Jinja2
##How do I use it ?
Beforehand you need to build all the containers available in the folder images 
To use the interactive prompt for configuration:
python3.5 conf.py -i image1 image2
To use a configuration file:
python3.5 conf.py -c conf.yml -i image1 ..
you can find a sample configuration file in the repository
To launch the resulting compose file:
in the output folder:
sh up.sh
##What do I need to know ?
This is an early alpha of the project and there is still lot of work remaining, the jira image has yet to be configured 
there are some remaining things like test users that should disappear in the near futur.
