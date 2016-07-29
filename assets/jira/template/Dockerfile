FROM jira
COPY dbconfig.xml /var/atlassian/application-data/jira/
COPY server.xml  /opt/atlassian/jira/conf
COPY seraph-config.xml /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
{% if crowd %}
COPY crowd.properties /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
{% endif %}
{% if nginx.ssl %}
# Create PKCS12 keystore from private key and public certificate.
RUN openssl crl2pkcs7 -nocrl -certfile cert.crt -out cert.p7b 

# Convert PKCS12 keystore into a JKS keystore
RUN keytool -import -trustcacerts -file cert.p7b -keystore keystore
{% endif %}