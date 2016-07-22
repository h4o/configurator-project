FROM jira
COPY dbconfig.xml /var/atlassian/application-data/jira/
COPY server.xml  /opt/atlassian/jira/conf
{% if crowd %}
COPY seraph-config.xml /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
COPY crowd.properties /opt/atlassian/jira/atlassian-jira/WEB-INF/classes/
{% endif %}