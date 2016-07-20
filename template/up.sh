#!/bin/sh

{% for image in images %}
docker-compose build --no-cache {{image}}
{% endfor %}
docker-compose up