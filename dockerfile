# From ubuntu
FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
#
# Modify ufw status

# Ins
RUN apt-get -y update
RUN apt-get -y install wget
RUN wget https://apache.osuosl.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz -P /
RUN apt-get -y install unzip
RUN tar -xzf /kafka_2.13-2.7.0.tgz
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install --upgrade kafka-python
RUN pip3 install --upgrade couchdb
RUN apt -y install openjdk-8-jre

#Install couchdb dependencies
RUN apt-get install -y gnupg ca-certificates
RUN echo "deb https://apache.bintray.com/couchdb-deb focal main" | tee -a /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61
RUN apt update
RUN apt-get install -y --force-yes couchdb
COPY local.ini /opt/couchdb/etc
#RUN /etc/init.d/couchdb stop
#
# Copy files
#COPY server1.properties /
#COPY server2.properties /
COPY consumer.py /
#
# Run a command shell (for Swarm and Kubernetes, we comment this out)
#CMD /bin/bash
