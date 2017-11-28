FROM ubuntu:16.04

MAINTAINER Danilo Luiz Rheinheimer

RUN apt-get update && \
    apt-get install -y openssh-server nano 

RUN /opt/app
COPY run.sh /opt/app
WORKDIR /opt/app
CMD /opt/app/run.sh