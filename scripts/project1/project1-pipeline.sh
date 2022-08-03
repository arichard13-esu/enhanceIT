#!/bin/bash
# Import data to hive and hbase
#
./sqoop-jobs.sh
echo
echo "SQOOP JOBS DONE!"
echo
hive -f extbl.hql
echo
echo "EXTERNAL TABLES CREATED!"
echo
hive -f intbl.hql
echo
echo "INTERNAL TABLES CREATED!"
echo
hive -f hbtbl.hql
echo
echo "HBASE TABLES CREATED!"
