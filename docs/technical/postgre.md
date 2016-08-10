#PostgreSQL
PostgreSQL has not a lot of parameters to play with but they interact with
Jira, Crowd and Bitbucket. Each time we say we write in the database, we mean
that we write in the corresponding sql dump (meaning jira.sql for Jira, 
bitbucket.sql for Bitbucket and crowd.sql for crowd). 
Postgresql has only two options: password and username they are written
where it is needed.

In jira it's in dbconfig.xml

In crowd it's in crowd.cfg.xml

In bitbucket it's in bitbucket.properties