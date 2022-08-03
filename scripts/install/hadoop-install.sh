#!/bin/bash
# This script will create directories and install hadoop
#
sudo apt update
sudo apt -y upgrade
sudo apt-get install openjdk-8-jdk
cd /usr/local
sudo chmod 777 /usr/local
mkdir hadoop-ecosystem
mkdir software
cd software
wget https://archive.apache.org/dist/hadoop/core/hadoop-2.9.2/hadoop-2.9.2.tar.gz
tar -xvf hadoop-2.9.2.tar.gz
mv hadoop-2.9.2 /usr/local/hadoop-ecosystem/
cd /usr/local/hadoop-ecosystem/hadoop-2.9.2/etc/hadoop/
cp mapred-site.xml.template mapred-site.xml
#
# ~/.bashrc
echo '' >> ~/.bashrc
echo '# JAVA path configuration' >> ~/.bashrc
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '# HADOOP path configuration' >> ~/.bashrc
echo 'export HADOOP_HOME=/usr/local/hadoop-ecosystem/hadoop-2.9.2' >> ~/.bashrc
echo 'export HADOOP_PREFIX=/usr/local/hadoop-ecosystem/hadoop-2.9.2' >> ~/.bashrc
echo 'export HADOOP_MAPRED_HOME=${HADOOP_HOME}' >> ~/.bashrc
echo 'export HADOOP_COMMON_HOME=${HADOOP_HOME}' >> ~/.bashrc
echo 'export HADOOP_HDFS_HOME=${HADOOP_HOME}' >> ~/.bashrc
echo 'export YARN_HOME=${HADOOP_HOME}' >> ~/.bashrc
echo 'export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '# Native Path' >> ~/.bashrc
echo 'export HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_PREFIX}/lib/native ' >> ~/.bashrc
echo 'export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib/native"' >> ~/.bashrc
echo '' >> ~/.bashrc
echo '# Add Hadoop bin/ directory to PATH' >> ~/.bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' >> ~/.bashrc
source ~/.bashrc
#
# core-site.xml
truncate -s 0 core-site.xml
echo '<?xml version="1.0" encoding="UTF-8"?>' >> core-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> core-site.xml
echo '' >> core-site.xml
echo '<configuration>' >> core-site.xml
echo '	<property>' >> core-site.xml
echo '		<name>fs.default.name</name>' >> core-site.xml
echo '		<value>hdfs://localhost:9000</value>' >> core-site.xml
echo '	</property>' >> core-site.xml
echo '</configuration>' >> core-site.xml
#
# hdfs-site.xml
truncate -s 0 hdfs-site.xml
echo '<?xml version="1.0" encoding="UTF-8"?>' >> hdfs-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> hdfs-site.xml
echo '' >> hdfs-site.xml
echo '<configuration>' >> hdfs-site.xml
echo '	<property>' >> hdfs-site.xml
echo '		<name>dfs.replication</name>' >> hdfs-site.xml
echo '		<value>1</value>' >> hdfs-site.xml
echo '	</property>' >> hdfs-site.xml
echo '	<property>' >> hdfs-site.xml
echo '		<name>dfs.namenode.name.dir</name>' >> hdfs-site.xml
echo '		<value>/usr/local/hadoop-ecosystem/yarn_data/hdfs/namenode</value>' >> hdfs-site.xml
echo '	</property>' >> hdfs-site.xml
echo '	<property>' >> hdfs-site.xml
echo '		<name>dfs.datanode.data.dir</name>' >> hdfs-site.xml
echo '		<value>/usr/local/hadoop-ecosystem/yarn_data/hdfs/datanode</value>' >> hdfs-site.xml
echo '	</property>' >> hdfs-site.xml
echo '</configuration>' >> hdfs-site.xml
#
# mapred-site.xml
truncate -s 0 mapred-site.xml
echo '<?xml version="1.0"?>' >> mapred-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> mapred-site.xml
echo '' >> mapred-site.xml
echo '<configuration>' >> mapred-site.xml
echo '	<property>' >> mapred-site.xml
echo '		<name>mapreduce.framework.name</name>' >> mapred-site.xml
echo '		<value>yarn</value>' >> mapred-site.xml
echo '	</property>' >> mapred-site.xml
echo '</configuration>' >> mapred-site.xml
#
# yarn-site.xml
truncate -s 0 yarn-site.xml
echo '<?xml version="1.0"?>' >> yarn-site.xml
echo '' >> yarn-site.xml
echo '<configuration>' >> yarn-site.xml
echo ' <!-- Site specific YARN configuration properties -->' >> yarn-site.xml
echo '	<property>' >> yarn-site.xml
echo '		<name>yarn.nodemanager.aux-services</name>' >> yarn-site.xml
echo '		<value>mapreduce_shuffle</value>' >> yarn-site.xml
echo '	</property>' >> yarn-site.xml
echo '	<property>' >> yarn-site.xml
echo '		<name>yarn.nodemanager.auxservices.mapreduce.shuffle.class</name>' >> yarn-site.xml
echo '		<value>org.apache.hadoop.mapred.ShuffleHandler</value>' >> yarn-site.xml
echo '	</property>' >> yarn-site.xml
echo '</configuration>' >> yarn-site.xml
# Open hadoop-env.sh and replace "export JAVA_HOME=${JAVA_HOME}" with...
# "export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64"
nano hadoop-env.sh
#
source ~/.bashrc
#
# Set up keys
sudo apt-get install openssh-server openssh-client
ssh-keygen -t rsa -P ""
cd ~/.ssh
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
# Format NameNode (This doesn't run for some reason)
hadoop namenode -format
#
# END
