FROM postgres:9.5

##ENV POSTGRES_USER {{ postgresUser }}
##ENV POSTGRES_PASSWORD {{ postgresPassword }}
{%if jira %}
COPY jira.sql /src/dump/
{% endif %}
{% if crowd %}
COPY crowd.sql /src/dump/
{% endif %}
{% if bitbucket %}
COPY bitbucket.sql /src/dump/
{% endif %}
COPY init-user-db.sh /docker-entrypoint-initdb.d/