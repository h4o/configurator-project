FROM fabienv/bitbucket
COPY bitbucket.properties /var/atlassian/application-data/bitbucket/shared
COPY server.xml /var/atlassian/application-data/bitbucket/shared
{% if self_signed and nginx.ssl %}
COPY keystore.jks /usr/src/bitbucket/
{% endif %}
COPY setenv.sh /opt/atlassian/bitbucket/bin/
