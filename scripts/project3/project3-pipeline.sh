#!/bin/bash
# Import data to hive and hbase using SPARK
#
hdfs dfs -mkdir /spp
hdfs dfs -mkdir /spp/csv

spark-submit /usr/local/spark-3.0.1/python/spark-jobs/sparkAVRO-import.py
echo
echo "SPARK TO HDFS DONE!"
echo
hive -f /home/aaron/Documents/scripts/project3/extbl.hql
echo
echo "EXTERNAL TABLES CREATED!"
echo
spark-submit /usr/local/spark-3.0.1/python/spark-jobs/spark-intbl.py
echo
echo "INTERNAL TABLES CREATED!"
echo
spark-submit /usr/local/spark-3.0.1/python/spark-jobs/spark-2mysql.py
echo
echo "MYSQL TABLES CREATED!"
