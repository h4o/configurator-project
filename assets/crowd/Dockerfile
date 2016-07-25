FROM crowd

copy ./crowd.properties /var/crowd-home/
copy ./crowd.cfg.xml /var/crowd-home/


RUN $JAVA_HOME/bin/keytool -import -alias tomcat -file tomcat.cert -keystore $JAVA_HOME/jre/lib/security/cacerts
