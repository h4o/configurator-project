#!/bin/bash

echo deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main| tee /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -
 apt-get update 

apt-get install -y postgresql-client-9.5