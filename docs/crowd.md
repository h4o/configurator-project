#Crowd
We have an image with Atlassian Bitbucket 4.7.1
You can find here a description of its differents parameters and their effect.
General parameters:
* *license* : a text-based file containing your docker license, if there is an issue with the license le setup won't be completed
* *baseUrl* : the url of your server including the protocol
* *subdirectory* : the subdirectory from which jira will be called, used in the nginx configuration, jira will be available from baseUrl/subdirecory
* *serverId* : the server Id linked with your license in your my.atlassian.com console, if you don't have one let it blank and it should work
###Admin account information:
The system asks for theses information to create your admin account.

* first_name
* last_name
* password
* username
* mail


###Other informations: Trusted application
Crowd use fixed internal ips to setup trusted applications in the system, but thoses are generated and can be different everytime you use config.py to generate a new configuration. 
If you don't want them to change so you can keep the same database with different similar configuration, we recommand to fixe thoses ip using the ip configuration in your configuration file.