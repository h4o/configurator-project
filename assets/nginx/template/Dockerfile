FROM fabienv/nginx-proxy
COPY default.conf /etc/nginx/conf.d/
{% if ssl %}
COPY cert.crt /etc/ssl/private/  
COPY key.key /etc/ssl/private/
{% endif %}
