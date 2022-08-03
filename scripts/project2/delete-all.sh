#!/bin/bash
# Delete all tables and data
#
hive -f del-hbtbl.hql
echo
echo "HBASE TABLES DELETED!"
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
echo
#./del-jobs.sh
echo
#echo "SQOOP JOBS DELETED!"
