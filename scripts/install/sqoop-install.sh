#!/bin/bash
# This script will install Sqoop
#
cd /usr/local/software
wget http://archive.apache.org/dist/sqoop/1.4.5/sqoop-1.4.5.bin__hadoop-0.23.tar.gz
tar -xvf sqoop-1.4.5.bin__hadoop-0.23.tar.gz
mv sqoop-1.4.5.bin__hadoop-0.23 /usr/local/hadoop-ecosystem/sqoop-1.4.5
#
# ~/.bashrc
echo '' >> ~/.bashrc
echo '# Add Scoop' >> ~/.bashrc
echo 'export SQOOP_HOME=/usr/local/hadoop-ecosystem/sqoop-1.4.5' >> ~/.bashrc
echo 'export PATH=$PATH:$SQOOP_HOME/bin' >> ~/.bashrc
source ~/.bashrc
#
cd /usr/local/hadoop-ecosystem/sqoop-1.4.5/conf
cp sqoop-env-template.sh sqoop-env.sh
#
# sqoop-env.sh
truncate -s 0 sqoop-env.sh
echo '# Set Hadoop-specific environment variables here.' >> sqoop-env.sh
echo '' >> sqoop-env.sh
echo '# Set path to where bin/hadoop is available' >> sqoop-env.sh
echo 'export HADOOP_COMMON_HOME=/usr/local/hadoop-ecosystem/hadoop-2.9.2' >> sqoop-env.sh
echo '' >> sqoop-env.sh
echo '# Set path to where hadoop-*-core.jar is available' >> sqoop-env.sh
echo 'export HADOOP_MAPRED_HOME=/usr/local/hadoop-ecosystem/hadoop-2.9.2' >> sqoop-env.sh
echo '' >> sqoop-env.sh
echo '# Set the path to where bin/hbase is available' >> sqoop-env.sh
echo '# export HBASE_HOME=' >> sqoop-env.sh
echo '' >> sqoop-env.sh
echo '# Set the path to where bin/hive is available' >> sqoop-env.sh
echo '# export HIVE_HOME=' >> sqoop-env.sh
echo '' >> sqoop-env.sh
echo '#Set the path for where zookeper config dir is' >> sqoop-env.sh
echo '#export ZOOCFGDIR=' >> sqoop-env.sh
#
sudo apt-get install libmysql-java
#
# MySQL:
# sudo ln -s /usr/share/java/mysql-connector-java-8.0.21.jar $SQOOP_HOME/lib/mysql-connector-java-8.0.21.jar

# PostgreSQL:
# wget https://jdbc.postgresql.org/download/postgresql-42.2.16.jar

# sudo ln -s /usr/share/java/postgresql-42.2.16.jar $SQOOP_HOME/lib/postgre-sql-42.2.16.jar

# SQL Server:
# sudo ln -s /usr/share/java/mssql-jdbc-8.4.1.jre8.jar $SQOOP_HOME/lib/ms-sql-jdbc-8.4.1.jre8.jar
