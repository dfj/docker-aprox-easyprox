FROM centos

RUN yum -y update
RUN yum -y install which curl java-1.7.0-openjdk-devel

RUN curl http://repo.maven.apache.org/maven2/org/commonjava/aprox/launch/aprox-launcher-min/0.12.0/aprox-launcher-min-0.12.0-launcher.tar.gz | tar xvz

EXPOSE 8080

WORKDIR /aprox-launcher-min

CMD ["bin/aprox.sh"]

