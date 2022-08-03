#!/bin/bash
# Install Spark
#
sudo apt update
sudo apt-get install scala git -y
cd /usr/local/software
wget https://downloads.apache.org/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz
tar xvf spark-3.0.1-bin-hadoop2.7.tgz
mv spark-3.0.1-bin-hadoop2.7 /usr/local/spark-3.0.1

# ~/.bashrc
echo '' >> ~/.bashrc
echo '# Add Spark' >> ~/.bashrc
echo 'export SPARK_HOME=/usr/local/spark-3.0.1' >> ~/.bashrc
echo 'export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin' >> ~/.bashrc
echo 'export PYSPARK_PYTHON=/usr/bin/python3' >> ~/.bashrc

cp /usr/local/hadoop-ecosystem/hadoop-2.9.2/etc/hadoop/hdfs-site.xml /usr/local/spark-3.0.1/conf
cp /usr/local/hadoop-ecosystem/hadoop-2.9.2/etc/hadoop/core-site.xml /usr/local/spark-3.0.1/conf
cp /usr/local/hadoop-ecosystem/hive-2.3.4-bin/conf/hive-site.xml /usr/local/spark-3.0.1/conf

cd /usr/local/spark-3.0.1/jars
wget https://repo1.maven.org/maven2/org/apache/spark/spark-avro_2.12/3.0.1/spark-avro_2.12-3.0.1.jar

# http://127.0.0.1:8080
# start-slave.sh spark://hadoopvm:7077
# To start a worker with CPU and memory
# start-slave.sh -c 1 spark://<vmname>:7077
# start-slave.sh -m 1024M spark:<vmname>:7077
