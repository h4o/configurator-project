#!/bin/bash

docker build -t bitbucket ./bitbucket/
docker build -t crowd ./crowd/
docker build -t jira ./jira/
docker build -t nginx-proxy ./nginx/