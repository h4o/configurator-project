#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER {{postgresUser}} WITH UNENCRYPTED PASSWORD '{{postgresPassword}}';
EOSQL


{% if jira %}
createdb --username "$POSTGRES_USER" jira
psql --username "$POSTGRES_USER" jira < /src/dump/jira.sql
{% endif %}

{% if crowd %}
createdb  --username "$POSTGRES_USER" crowd
psql --username "$POSTGRES_USER" crowd < /src/dump/crowd.sql
{% endif %}

{% if bitbucket %}
createdb --username "$POSTGRES_USER" bitbucket
psql --username "$POSTGRES_USER" bitbucket < /src/dump/bitbucket.sql
{% endif %}
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    {% if bitbucket %}
    GRANT ALL PRIVILEGES ON DATABASE bitbucket TO {{postgresUser}};
    {% endif %}
    {% if crowd %}
    GRANT ALL PRIVILEGES ON DATABASE crowd TO {{postgresUser}};
    {% endif %}
    {% if jira %}
    GRANT ALL PRIVILEGES ON DATABASE jira TO {{postgresUser}};
    {% endif %}
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO {{postgresUser}};
EOSQL