#Jira
Here you can find different parameters and where there are written

Contrary to bitbucket, we do not have a .properties file to write data to so
almost everything is set on the database

* *license* : written in the database, escaped by "\\"
* *baseUrl* : written in the database in conjunction with subdirectory to set a base url
* *subdirectory* : written in database in conjonction with subdirectory to set a base url
                   also used in server.xml to set which directory to serve
* *serverId* : written in the database
* *max_memory* : written in setenv.sh
* *self_signed* (boolean) : used to toggle the keystore usage or not
* *keystore* : places the keystore at /usr/src/jira and sets the truststore environment variable
                with it's path and truststorepassword to "changeit" in JAVA_OPTS in setenv.sh

The following are only set in the database, with a normal and a lower case version:

* first_name
* last_name
* username
* mail

The password is set in the database and hashed with Passlib's PKS512 hash