FROM bitbucket
COPY bitbucket.properties /var/atlassian/application-data/bitbucket/shared
COPY server.xml /var/atlassian/application-data/bitbucket/shared
{% if nginx.ssl %}
COPY keystore.jks /urs/src/bitbucket/
ENV JAVA_OPTS $JAVA_OPTS -Djavax.net.ssl.trustStore=/etc/src/bitbucket/keystore.jks -Djavax.net.ssl.trustStorePassword=changeit -server
{% endif %}