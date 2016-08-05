#SSL keystore
To convert add an ssl certificate to a java keystore use:
 ```bash
openssl pkcs12 -export -in cert.crt -inkey key.key > server.p12

keytool -importkeystore -srckeystore server.p12 -destkeystore server.jks -srcstoretype pkcs12
 ```
 We recommend that you use as your destination key store (destkeystore) a keystore containing corrects root certificates
 so that you can access the application's store. For now the key for the keystore is set to java's default "changeit"
 