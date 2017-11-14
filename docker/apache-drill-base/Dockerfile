FROM openjdk:8-jdk-alpine

LABEL maintainer="figpope"

ENV DRILL_BUFFER_SIZE=100

EXPOSE 8047 8048 31010 31011 31012 46655/udp

RUN apk --no-cache add bash

ADD apache-drill.tar.gz /opt/apache-drill

COPY drivers/postgresql-42.1.4.jar /opt/apache-drill/jars/3rdparty/postgresql-42.1.4.jar

COPY logback.xml /opt/apache-drill/conf/logback.xml

