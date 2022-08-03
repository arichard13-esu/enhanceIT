#!/bin/bash
# This script will install hive
#
cd /usr/local/software
wget https://archive.apache.org/dist/hive/hive-1.2.0/apache-hive-1.2.0-bin.tar.gz
tar -xvf apache-hive-1.2.0-bin.tar.gz
mv apache-hive-1.2.0-bin /usr/local/hadoop-ecosystem/hive-1.2.0-bin
cd /usr/local/hadoop-ecosystem/hive-1.2.0-bin/conf
cp hive-default.xml.template hive-site.xml
#
# hive-site.xml
truncate -s 0 hive-site.xml
echo '<?xml version="1.0" encoding="UTF-8" standalone="no"?>' >> hive-site.xml
echo '<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>' >> hive-site.xml
echo '' >> hive-site.xml
echo '<configuration>' >> hive-site.xml
echo '	 <property>' >> hive-site.xml
echo ' 		<name>javax.jdo.option.ConnectionURL</name>' >> hive-site.xml
echo ' 		<value>jdbc:mysql://localhost:3306/metastore?createDatabaseIfNotExist=true&amp;useSSL=false</value>' >> hive-site.xml
echo ' 		<description>Metadata will be stored in MYSql server</description>' >> hive-site.xml
echo ' 	</property>' >> hive-site.xml
echo ' 	<property>' >> hive-site.xml
echo ' 		<name>javax.jdo.option.ConnectionDriverName</name>' >> hive-site.xml
echo ' 		<value>com.mysql.jdbc.Driver</value>' >> hive-site.xml
echo ' 		<description>MySql JDBC Driver class</description>' >> hive-site.xml
echo ' 	</property>' >> hive-site.xml
echo ' 	<property>' >> hive-site.xml
echo ' 		<name>javax.jdo.option.ConnectionUserName</name>' >> hive-site.xml
echo ' 		<value>root</value>' >> hive-site.xml
echo ' 		<description>Username for connecting to MYSql database</description>' >> hive-site.xml
echo ' 	</property>' >> hive-site.xml
echo ' 	<property>' >> hive-site.xml
echo ' 		<name>javax.jdo.option.ConnectionPassword</name>' >> hive-site.xml
echo ' 		<value>test123</value>' >> hive-site.xml
echo ' 		<description>Password for connecting to MYSql database</description>' >> hive-site.xml
echo ' 	</property>' >> hive-site.xml
echo '	<property>' >> hive-site.xml
echo '  		<name>hive.server2.enable.doAs</name>' >> hive-site.xml
echo '  		<value>false</value>' >> hive-site.xml
echo ' 	</property>' >> hive-site.xml
echo '</configuration>' >> hive-site.xml
#
# ~/.bashrc
# echo '' >> ~/.bashrc
# echo '# Add HIVE' >> ~/.bashrc
# echo 'export HIVE_HOME=/usr/local/hadoop-ecosystem/hive-1.2.0-bin' >> ~/.bashrc
# echo 'export PATH=$PATH:$HIVE_HOME/bin' >> ~/.bashrc
# source ~/.bashrc
sudo ln -s /usr/share/java/mysql-connector-java-8.0.21.jar /usr/local/hadoop-ecosystem/hive-1.2.0-bin/lib/mysql-connector-java-8.0.21.jar
cd /usr/local/hadoop-ecosystem/hive-1.2.0-bin/bin
# If error, “permission denied,” run this command and then rerun schematool
# cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#
# If *** schemaTool failed *** then drop database metastore in mysql
./schematool -initSchema -dbType mysql
#
# END
