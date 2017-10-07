FROM openjdk:8-jdk-alpine

LABEL maintainer="figpope"

ARG DRILL_VERSION=1.11.0

ENV DRILL_VERSION=${DRILL_VERSION}

ADD apache-drill-$DRILL_VERSION.tar.gz /opt/apache-drill-$DRILL_VERSION
RUN apk --no-cache add bash

COPY drivers/postgresql-42.1.4.jar /opt/apache-drill-$DRILL_VERSION/jars/3rdparty/postgresql-42.1.4.jar

COPY drill-env.sh /opt/apache-drill-$DRILL_VERSION/conf/drill-env.sh
COPY logback.xml /opt/apache-drill-$DRILL_VERSION/conf/logback.xml

EXPOSE 8047 8048 31010 31011 31012 46655/udp

ENV DRILL_CLUSTER=drillcluster DRILL_BUFFER_SIZE=100

ENTRYPOINT /opt/apache-drill-$DRILL_VERSION/bin/drillbit.sh run
