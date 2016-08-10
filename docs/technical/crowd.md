#Crowd
Here you can find different parameters and where there are written

Contrary to bitbucket, we do not have a .properties file to write data to so
almost everything is set on the database

* *license* : written in the database, escaped by "\\"
              also written in crowd.cfg.xml with no special escapement characters
* *baseUrl* : written in the database in conjunction with subdirectory to set a base url
* *subdirectory* : written in database in conjonction with subdirectory to set a base url
                   also used in server.xml to set which directory to serve
* *serverId* : written in the database

The following are only set in the database, with a normal and a lower case version:

* first_name
* last_name
* username
* mail

The password is set in the database and hashed with Passlib's PKS512 hash
You have to know that when an image like jira and bitbucket is setup, the corresponding 
application is setup in crowd's database using the internal ips set in the docker-compose.yml file,
those are susceptible to change so if you want them to stay between minor configuration change, remember
to fix them using the ip option in your conf.yml file.