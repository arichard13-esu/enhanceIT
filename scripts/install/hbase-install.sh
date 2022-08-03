#!/bin/bash
# This script will install HBase
#
cd /usr/local/software
wget https://downloads.apache.org/hbase/stable/hbase-2.2.5-bin.tar.gz
tar -xvf hbase-2.2.5-bin.tar.gz
mv hbase-2.2.5 /usr/local/hadoop-ecosystem
cd /usr/local/hadoop-ecosystem/hbase-2.2.5/conf
#
# hbase-env.sh
truncate -s 0 hbase-env.sh
echo '#!/usr/bin/env bash' >> hbase-env.sh
echo '#' >> hbase-env.sh
echo '# The java implementation to use.  Java 1.8+ required.' >> hbase-env.sh
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64' >> hbase-env.sh
echo '#' >> hbase-env.sh
echo '# Extra Java runtime options.' >> hbase-env.sh
echo '# Below are what we set by default.  May only work with SUN JVM.' >> hbase-env.sh
echo '# For more on why as well as other possible settings,' >> hbase-env.sh
echo '# see http://hbase.apache.org/book.html#performance' >> hbase-env.sh
echo 'export HBASE_OPTS="$HBASE_OPTS -XX:+UseConcMarkSweepGC"' >> hbase-env.sh
echo '#' >> hbase-env.sh
echo '# File naming hosts on which HRegionServers will run. $HBASE_HOME/conf/regionservers by default.' >> hbase-env.sh
echo 'export HBASE_REGIONSERVERS=/usr/local/hadoop-ecosystem/hbase-2.2.5/conf/regionservers' >> hbase-env.sh
echo '#' >> hbase-env.sh
echo '# Tell HBase whether it should manage its own instance of ZooKeeper or not.' >> hbase-env.sh
echo 'export HBASE_MANAGES_ZK=true' >> hbase-env.sh
#
# ~/.bashrc
echo '' >> ~/.bashrc
echo '# Add Hbase Path' >> ~/.bashrc
echo 'export HBASE_HOME=/usr/local/hadoop-ecosystem/hbase-2.2.5' >> ~/.bashrc
echo 'export PATH=$PATH:$HBASE_HOME/bin' >> ~/.bashrc
source ~/.bashrc
#
# hbase-site.xml
truncate -s 0 hbase-site.xml
echo '<?xml version="1.0"?>' >> hbase-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> hbase-site.xml
echo '<configuration>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.tmp.dir</name>' >> hbase-site.xml
echo '		<value>./tmp</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.unsafe.stream.capability.enforce</name>' >> hbase-site.xml
echo '		<value>false</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.rootdir</name>' >> hbase-site.xml
echo '		<value>hdfs://localhost:9000/hbase</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.cluster.distributed</name>' >> hbase-site.xml
echo '		<value>true</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.zookeeper.quorum</name>' >> hbase-site.xml
echo '		<value>localhost</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>dfs.replication</name>' >> hbase-site.xml
echo '		<value>1</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.zookeeper.property.clientPort</name>' >> hbase-site.xml
echo '		<value>2181</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '	<property>' >> hbase-site.xml
echo '		<name>hbase.zookeeper.property.dataDir</name>' >> hbase-site.xml
echo '		<value>/usr/local/hadoop-ecosystem/hbase/zookeeper</value>' >> hbase-site.xml
echo '	</property>' >> hbase-site.xml
echo '</configuration>' >> hbase-site.xml
#
# END
