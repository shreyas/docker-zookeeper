#!/bin/bash
ZK_HOME=/opt/zookeeper

echo $ZK_NODE_ID >$ZK_NODE_ID/data/myid
$ZK_HOME/conf-helpers/gen.zoo.cfg >$ZK_HOME/conf/zoo.cfg

trap "kill -15 -1" EXIT KILL

exec "$ZK_HOME/bin/zkServer.sh start-foreground $ZK_HOME/conf/zoo.cfg"

