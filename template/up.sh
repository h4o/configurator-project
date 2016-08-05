#!/bin/sh

{% for image in images %}
docker-compose build --no-cache {{image.name}}
{% if image.volumes %}
  {% for volume in image.volumes %}
  mkdir -p {{image.volumes_from}}{{ image.name }}/{{ volume.name }}
  chmod 777 {{image.volumes_from}}{{ image.name }}/{{ volume.name }}
  {% endfor %}
{% endif %}
{% endfor %}
docker-compose up
