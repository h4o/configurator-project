#Nginx
Nginx in this setup is a required image used as a proxy for your tools. It has also an option to activate ssl on all traffic.
Here are the different parameters for nginx.
* *ssl* : (boolean) whether you want ssl in your install or not
* *certificate* : (leave blank if ssl is false) your ssl certificate
* *key* : (leave blank if ssl is false) your ssl private key
* *baseUrl* : the base url *without* the protocol name
###More technical information
You can find more technical information [here](technical/nginx.md)