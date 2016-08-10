#General information
Here you can find technical informations about what does each parameters you are setting
when configuring your system.
In general you have very little options only those both:
*volumes_from* : used as a base directory for every volumes in the docker-compose file
                set as a default to /etc/data, make sure to have the write rights in this folder
                or images will crash

ip: you can set a specific /16 suffix for your images if you need the ip to stay fixed between
configuration changes. The ip is set with a network bridge on the subnet 173.17.0.0/16 with a gateway of
173.17.5.254. Those are used internally by both nginx to proxy services and Crowd to setup application authorizations.

For each image go to their documentation page:

* (Crowd)[crowd.md]
* (Jira)[jira.md]
* (Bitbucket)[bitbucket.md]
* (Nginx)[nginx.md]
* (PostgreSQL)[postgre.md]