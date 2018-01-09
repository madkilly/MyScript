#!/bin/bash
if [ "$1" == "start" ]; then
	nohup /usr/local/redis/redis-server > /usr/local/redis/redis.log 2>&1 &
	/usr/local/zookeeper-3.4.8/bin/zkServer.sh start;
	/usr/local/apache-tomcat-8.0.35/bin/startup.sh;
	/usr/local/src/solr-5.5.2/server/scripts/cloud-scripts/zkcli.sh -zkhost localhost:2181 -cmd upconfig -confdir /usr/local/solrcloud/solrslave/server/solr/SolrTest/conf -confname SolrTest;
	/usr/local/src/solr-5.5.2/bin/solr -c -z localhost:2181 -p 8983;
	/usr/local/src/solr-5.5.2/bin/solr -c -z localhost:2181 -p 8984;
	/etc/init.d/rabbitmq-server start;
	printf "started\n";
	elif [ "$1" == "stop" ]; then
	ps -ef|grep zookeeper|grep -v grep|awk '{print $2}'|xargs kill -9;
	ps -ef|grep tomcat|grep -v grep|awk '{print $2}'|xargs kill -9;
	ps -ef|grep redis|grep -v grep|awk '{print $2}'|xargs kill -9;
	/usr/local/src/solr-5.5.2/bin/solr stop -all;
	/etc/init.d/rabbitmq-server stop;
	printf "stop\n";
fi