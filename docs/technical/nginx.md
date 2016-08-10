#Nginx
Nginx is aware of other images, their internal ip addresses, their listening port and internal ip
If ssl is set to true it will copy the key and certificate in /etc/ssl/private
 and redirect every request on port 80 to the https default port 443.
Every redirection is set likewise:

```nginx
    location /imageName {
        proxy_set_header X-Forwarded-Host $host;
        proxy_set_header X-Forwarded-Server $host;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass http://173.17.0.imageIp:imagePort/imageDirectory;
    }
```