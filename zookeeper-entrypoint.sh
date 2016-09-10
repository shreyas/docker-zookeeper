#!/bin/bash
ZK_HOME=/opt/zookeeper

set -e

echo $ZK_NODE_ID >$ZK_HOME/data/myid
$ZK_HOME/conf-helpers/gen.zoo.cfg >$ZK_HOME/conf/zoo.cfg

trap "kill -15 -1" EXIT KILL

$ZK_HOME/bin/zkServer.sh start-foreground

