FROM java:8
WORKDIR /usr/src/
RUN wget -nv https://downloads.atlassian.com/software/crowd/downloads/atlassian-crowd-2.9.1.tar.gz
##RUN mkdir /usr/src/crowd/
RUN tar -xf atlassian-crowd-2.9.1.tar.gz
RUN mv -T atlassian-crowd-2.9.1 crowd
WORKDIR /usr/src/crowd

EXPOSE 8095

###copy ./dump.sql /usr/src/crowd
copy ./pg_install.sh /usr/src/crowd
copy ./crowd-init.properties /usr/src/crowd/crowd-webapp/WEB-INF/classes/crowd-init.properties
RUN sh pg_install.sh
RUN ls
copy ./crowd.properties /var/crowd-home/
copy ./crowd.cfg.xml /var/crowd-home/
