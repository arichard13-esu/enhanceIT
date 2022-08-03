#!/bin/bash
# This script will install kafka

sudo apt-get update
cd /usr/local/software
wget https://downloads.apache.org/kafka/2.4.1/kafka_2.11-2.4.1.tgz
# wget https://downloads.apache.org/kafka/2.6.0/kafka_2.13-2.6.0.tgz
tar -xvf kafka_2.11-2.4.1.tgz
mv /usr/local/software/kafka_2.11-2.4.1 /usr/local/

# bin/zookeeper-server-start.sh config/zookeeper.properties

# bin/kafka-server-start.sh config/server.properties 

# bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic testTopic

# bin/kafka-topics.sh --list --zookeeper localhost:2181

# bin/kafka-console-producer.sh --broker-list localhost:9092 --topic testTopic

# bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic testTopic --from-beginning
