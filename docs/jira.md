#Jira
We have an image with Atlassian Jira 7.1.9
You can find here a description of its differents parameters and their effect.
General parameters:
* *license* : a text-based file containing your docker license, if there is an issue with the license le setup won't be completed
* *baseUrl* : the url of your server including the protocol
* *subdirectory* : the subdirectory from which jira will be called, used in the nginx configuration, jira will be available from baseUrl/subdirecory
* *serverId* : the server Id linked with your license in your my.atlassian.com console, if you don't have one let it blank and it should work
* *max_memory* : the maximum memory in mo that jira will be allowed to use
* *keystore* : the address of the local keystore(java format) on your server in case you have a self signed certificate, necessary for applinks to work
###Admin account information:
The system asks for theses information to create your admin account. Please note that this account will only work if crowd is de-activated

* first_name
* last_name
* password
* username
* mail
###Other informations: Applinks
If bitbucket is present in your installation, an application link will be created but it won't work, it is a known bug.
To correct it, once the system has booted and is correctly set up, go in you administration panel, select applications>application links
delete the current one and then enter the url of bitbucket, then follow the instructions in the panel to setup the applink correctly.