FROM ubuntu:latest
COPY ./response.varfile /usr/src/bitbucket/
#COPY ./atlassian-bitbucket-4.7.1-x64.bin /usr/src/bitbucket/
WORKDIR /usr/src/bitbucket
RUN apt-get update 
RUN	apt-get -y install git
RUN apt-get install -y postgresql-client-9.5
RUN apt-get install -y wget
RUN apt-get install -y ntp
ENV BITBUCKET_VERSION 4.7.1
ENV DOWNLOAD_URL        https://downloads.atlassian.com/software/stash/downloads/atlassian-bitbucket-${BITBUCKET_VERSION}-x64.bin
RUN wget -nv $DOWNLOAD_URL
RUN chmod +x atlassian-bitbucket-4.7.1-x64.bin
RUN ./atlassian-bitbucket-4.7.1-x64.bin -q -varfile response.varfile
WORKDIR /opt/atlassian/bitbucket/bin
RUN chmod +x start-bitbucket.sh
#COPY bitbucket.properties /var/atlassian/application-data/bitbucket/shared
COPY server.xml /var/atlassian/application-data/bitbucket/shared
EXPOSE 7990
#/var/atlassian/application-data/bitbucket
