FROM centos

MAINTAINER John Casey <jdcasey@commonjava.org>

RUN yum -y update
RUN yum -y install tar which curl java-1.7.0-openjdk-devel tree

#RUN df -h

RUN mkdir -p /opt

##########
# This:
#ADD aprox-launcher-easyprox.tar.gz /opt
# ...Or, these:
ADD http://repo.maven.apache.org/maven2/org/commonjava/aprox/launch/aprox-launcher-easyprox/0.13.1/aprox-launcher-easyprox-0.13.1-launcher.tar.gz /opt/aprox-launcher-easyprox-0.13.1-launcher.tar.gz
RUN ls -alh /opt
RUN tar -zxvf /opt/aprox-launcher-easyprox-0.13.1-launcher.tar.gz -C /opt
##########

ADD env.sh /opt/aprox-launcher-easyprox/etc/aprox/env.sh

RUN tree /opt

EXPOSE 8080
EXPOSE 8000

WORKDIR /opt/aprox-launcher-easyprox

#CMD /sbin/ifconfig && bin/aprox.sh

ENTRYPOINT /opt/aprox-launcher-easyprox/bin/aprox.sh
