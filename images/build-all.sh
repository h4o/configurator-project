#!/bin/bash

docker build -t fabienv/bitbucket ./bitbucket/
docker build -t fabienv/crowd ./crowd/
docker build -t fabienv/jira ./jira/
docker build -t fabienv/nginx-proxy ./nginx/