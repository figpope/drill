# TODO - add real versioning
FROM localhost:5000/celmatix/apache-drill-base:1.11.0
LABEL maintainer="figpope"

ENV DRILL_CLUSTER=drillcluster

COPY drill-env.sh /opt/apache-drill/conf/drill-env.sh

ENTRYPOINT /opt/apache-drill/bin/drillbit.sh run
