#!/bin/bash
host="172.17.0.1"

ntpd -d -q -n -p pool.ntp.org &

export PGPASSWORD={{postgres.postgresPassword}}

until psql bitbucket -h "$host" -U "{{postgres.postgresUser}}" -c '\l'; do
#  >&2 echo "Postgres is unavailable - sleeping"
  sleep 10
done

>&2 echo "Postgres is up - executing command"

/opt/atlassian/bitbucket/bin/start-bitbucket.sh -fg
