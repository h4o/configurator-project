#Bitbucket
Here you can find different parameters and where there are written

* *license* : written both in bitbucket.properties and the sql file 
             escaped by " \\" in the first one, and by "\\" second one
* *baseUrl* : written in bitbucket.properties in conjunction with subdirectory to set a base URL
* *subdirectory* : written in bitbucket.propertes in conjonction with subdirectory to set a base URL
                   also used in server.xml to set which directory to serve
* *serverId* : written in the database
* *max_memory* : written in setenv.sh
* *self_signed* (boolean) : used to toggle the keystore usage or not
* *keystore* : replaces the original keystore at /opt/atlassian/bitbucket/jre/lib/security
                if self_signed is set to true

The following are only set in the database, with a normal and a lower case version:

* first_name
* last_name
* username
* mail

The password is set in the database and hashed with Passlib's PKS512 hash