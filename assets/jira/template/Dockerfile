FROM jira
COPY dbconfig.xml /var/atlassian/application-data/jira/
COPY server.xml  /opt/atlassian/jira/conf
COPY seraph-config.xml /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
{% if crowd %}
COPY crowd.properties /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
{% endif %}
{% if nginx.ssl %}
COPY keystore.jks /usr/src/jira
##ENV JAVA_OPTS $JAVA_OPTS -Djavax.net.ssl.trustStore=/usr/src/jira/keystore.jks -Djavax.net.ssl.trustStorePassword=changeit -server
{% endif %}
COPY setenv.sh /opt/atlassian/jira/bin