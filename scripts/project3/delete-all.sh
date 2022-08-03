#!/bin/bash
# Delete all tables and data
#
echo
hive -f del-intbl.hql
echo
echo "INTERNAL TABLES DELETED!"
echo
hive -f del-extbl.hql
echo
echo "EXTERNAL TABLES DELETED!"
echo
./del-hdfs.sh
echo
echo "HDFS FILES DELETED!"
