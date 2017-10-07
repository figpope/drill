#!/usr/bin/env sh

export DRILL_BUFFER_SIZE=${DRILL_BUFFER_SIZE:=100}
export DRILL_LOG_LEVEL=${DRILL_LOG_LEVEL:=info}

env | grep -E "ZOOKEEPER|DRILL"

drill_conf=/opt/apache-drill-$DRILL_VERSION/conf

sed -i "s|DRILL_LOG_LEVEL|$DRILL_LOG_LEVEL|" $drill_conf/logback.xml

# Drill overrides
drill_override_conf=$drill_conf/drill-override.conf
echo "drill.exec.cluster-id: \"$DRILL_CLUSTER\"" > $drill_override_conf
echo "drill.exec.zk.connect: \"$ZOOKEEPER\"" >> $drill_override_conf
echo "drill.exec.buffer.size: $DRILL_BUFFER_SIZE" >> $drill_override_conf

cat $drill_override_conf
