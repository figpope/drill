# TODO - add real versioning
FROM localhost:5000/celmatix/apache-drill-base:1.11.0
LABEL maintainer="figpope"

COPY drill-env.sh /opt/apache-drill/conf/drill-env.sh

CMD /opt/apache-drill/bin/drill-embedded
