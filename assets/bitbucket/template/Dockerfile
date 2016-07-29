FROM bitbucket
COPY bitbucket.properties /var/atlassian/application-data/bitbucket/shared
COPY server.xml /var/atlassian/application-data/bitbucket/shared
{% if nginx.ssl %}
COPY keystore.jks /urs/src/bitbucket/
{% endif %}