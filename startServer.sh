#!bin/bash

/usr/local/zookeeper-3.4.8/bin/zkServer.sh start

nohup /usr/local/redis/redis-server > /usr/local/log/redis/redis.log 2>&1 &

/usr/local/apache-tomcat-8.0.35/bin/startup.sh
