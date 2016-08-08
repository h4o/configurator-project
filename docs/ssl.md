#SSL
##With a self signed certificate
###Generating the certificate
Assuming you have openssl already installed, simply do in a command line
```bash
openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365
```
The program will ask you various question to generate the certificate, when asked for the common name use your 
server's domain name, including the subdomain( eg if you want to host your service in https://dev.example.org, use 
dev.example.org)

The key key.pem and the certificate cert.pem are the one to be used in nginx's configuration. Don't forget also
to set ssl to True.

Now if you have an installation with both bitbucket and jira, you will want to have applinks working
but they don't trust your self signed certificate so you'll have to make them trust it.

First, find your root java keystore named cacerts on your server, it'll either be in /etc/ssl/certs/java
or $JAVA_HOME/lib/security. You will use it as a base so that you keep your list of trusted certificates.
Now, just do theses commands. 

The first one will ask for the password used at the creation of the key and an export password.

The second one will ask for the password of the file you're exporting to, by default it is changeit, 
then it will ask for your export password you just set with openssl.


```bash
openssl pkcs12 -export -in cert.pem -inkey key.pem > server.p12

keytool -importkeystore -srckeystore server.p12 -destkeystore cacerts -srcstoretype pkcs12
 ```
This new cacerts file is the one you will use for the keystore parameter in both jira and bitbucket.

Don't forget to also set self_signed to true so that it is taken into account.