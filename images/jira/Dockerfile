FROM ubuntu:latest
COPY ./response.varfile /usr/src/jira/
#COPY ./atlassian-jira-software-7.1.8-jira-7.1.8-x64.bin /usr/src/jira/
COPY ./launcher.sh /usr/src/jira/
WORKDIR /usr/src/jira
RUN apt-get update
RUN apt-get install -y postgresql-client-9.5
RUN apt-get install -y wget
ENV JIRA_VERSION 7.1.9
ENV DOWNLOAD_URL        https://downloads.atlassian.com/software/jira/downloads/atlassian-jira-software-${JIRA_VERSION}-x64.bin
RUN wget -nv $DOWNLOAD_URL
RUN chmod +x atlassian-jira-software-7.1.9-x64.bin
RUN ./atlassian-jira-software-7.1.9-x64.bin -q -varfile response.varfile
#WORKDIR /opt/atlassian/jira/bin
RUN chmod +x /opt/atlassian/jira/bin/start-jira.sh
EXPOSE 8080
CMD ["sh", "launcher.sh"]