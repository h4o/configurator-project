#!/bin/sh

{% for image in images %}
docker-compose build --no-cache {{image}}
{% if image.volumes %}
  {% for volume in image.volumes %}
  mkdir -R /etc/data/{{ image.name }}/{{ volume.name }}
  chmod 777 /etc/data/{{ image.name }}/{{ volume.name }}
  {% endfor %}
{% endif %}
{% endfor %}
docker-compose up