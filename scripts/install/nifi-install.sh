#!/bin/bash
# This script will install NiFi

sudo apt-get update
cd /usr/local/software
# wget https://apache.osuosl.org/nifi/1.12.1/nifi-1.12.1-bin.tar.gz
wget https://downloads.apache.org/nifi/1.12.1/nifi-1.12.1-bin.tar.gz
tar -xvf nifi-1.12.1-bin.tar.gz
mv /usr/local/software/nifi-1.12.1 /usr/local/

cd /usr/local/software/nifi-1.12.1


# sudo gedit /usr/local/nifi-1.12.1/conf/bootstrap.conf

# The defaults.
# JVM memory settings
# java.arg.2=-Xms512m
# java.arg.3=-Xmx512m

# If you wanted to change it to 1 GB each:
# JVM memory settings
# java.arg.2=-Xms1g
# java.arg.3=-Xmx1g

# sudo ./usr/local/nifi-1.12.1/bin/nifi.sh start
# sudo ./usr/local/nifi-1.12.1/bin/nifi.sh status
# sudo ./usr/local/nifi-1.12.1/bin/nifi.sh stop
