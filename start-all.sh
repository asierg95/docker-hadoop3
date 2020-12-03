#!/bin/bash

/etc/init.d/ssh start

# START HADOOP
##############

$HADOOP_HOME/bin/hdfs namenode -format

$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$HADOOP_HOME/sbin/mr-jobhistory-daemon.sh start historyserver

hdfs dfs -chmod -R 755 /
hdfs dfs -mkdir /users
hdfs dfs -chmod -R 777 /public

tail -f /dev/null
