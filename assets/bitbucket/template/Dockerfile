FROM fabienv/bitbucket
COPY bitbucket.properties /var/atlassian/application-data/bitbucket/shared
COPY server.xml /var/atlassian/application-data/bitbucket/shared
{% if self_signed and nginx.ssl %}
COPY keystore.jks /opt/atlassian/bitbucket/jre/lib/security/cacerts
{% endif %}
COPY setenv.sh /opt/atlassian/bitbucket/bin/
COPY ./launcher.sh /usr/src/bitbucket
WORKDIR /usr/src/bitbucket
CMD ["sh","launcher.sh"]
