FROM ubuntu:14.04
MAINTAINER krystism "krystism@gmail.com"
# To enable the OpenStack repository
RUN apt-get -y update
RUN apt-get -y install python-software-properties
RUN echo "deb http://ubuntu-cloud.archive.canonical.com/ubuntu trusty-updates/juno main" > /etc/apt/sources.list.d/ubuntu-cloud-archive-juno-trusty.list
RUN apt-get -y install ubuntu-cloud-keyring
RUN apt-get -y update
RUN apt-get -y install mysql-client
RUN apt-get -y install python-mysqldb

# Ensure the package is latest
RUN apt-get -y dist-upgrade
CMD ["/bin/bash"]
