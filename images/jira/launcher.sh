#!/bin/bash
set -e

host="db"

cmd="$@"

until psql -h "$host" -U "postgres" -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd

# export PGPASSWORD=admin
# createdb --port=5432 --host=172.17.0.1 --username=postgres jira
# psql --port=5432 --host=172.17.0.1 --username=postgres jira < dump.sql

/opt/atlassian/jira/bin/start-jira.sh -fg