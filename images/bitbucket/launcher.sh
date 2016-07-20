#!/bin/bash
host="172.17.0.1"

cmd="$@"

until psql -h "$host" -U "postgres" -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
exec $cmd


/opt/atlassian/bitbucket/bin/start-bitbucket.sh -fg