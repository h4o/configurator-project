#!/bin/bash
set -e

host="172.17.0.1"

ntpd -d -q -n -p pool.ntp.org


until psql -h "$host" -U "postgres" -c '\l'; do
#  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

#>&2 echo "Postgres is up - executing command"
#exec $cmd

# export PGPASSWORD=admin
# createdb --port=5432 --host=172.17.0.1 --username=postgres crowd
# psql --port=5432 --host=172.17.0.1 --username=postgres crowd < dump.sql


/usr/src/crowd/start_crowd.sh
sleep infinity
##cat /var/crowd-home/logs/atlassian-crowd.log
ls /var/crowd-home/logs
ls /var/crowd-home
ls /var
