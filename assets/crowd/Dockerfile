FROM fabienv/crowd

copy ./crowd.properties /var/crowd-home/
copy ./crowd.cfg.xml /var/crowd-home/
copy ./server.xml /usr/src/crowd/apache-tomcat/conf/server.xml
copy ./start.sh /usr/src/crowd

workdir /usr/src/crowd

CMD ["sh","start.sh"]