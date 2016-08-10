#!/bin/bash

set -e

host="172.17.0.1"

ntpd -d -q -n -p pool.ntp.org

export PGPASSWORD={{postgres.postgresPassword}}

until psql -h "$host" -U "{{postgres.postgresUser}}" -c '\l'; do
#  >&2 echo "Postgres is unavailable - sleeping"
  sleep 10
done

# export PGPASSWORD=admin
# createdb --port=5432 --host=172.17.0.1 --username=postgres jira
# psql --port=5432 --host=172.17.0.1 --username=postgres jira < dump.sql

/opt/atlassian/jira/bin/start-jira.sh -fg