FROM centos

RUN yum -y update
RUN yum -y install which curl java-1.7.0-openjdk-devel

RUN curl http://repo.maven.apache.org/maven2/org/commonjava/aprox/launch/aprox-launcher-easyprox/0.12.1/aprox-launcher-easyprox-0.12.1-launcher.tar.gz | tar xz

EXPOSE 8080

WORKDIR /aprox-launcher-easyprox

# CMD ["bin/aprox.sh", "-c", "/aprox-launcher-easyprox/etc/aprox/main.conf"]
CMD ["bin/aprox.sh"]
