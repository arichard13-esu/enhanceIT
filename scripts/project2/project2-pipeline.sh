#!/bin/bash
# Import data to hive and hbase using SPARK
#
hdfs dfs -mkdir /spp
hdfs dfs -mkdir /spp/csv
hdfs dfs -put /home/aaron/solarpowerplants/Plant_1_Weather_Sensor_Data.csv /spp/csv

spark-submit /usr/local/spark-3.0.1/python/spark-jobs/sparkCSV-import.py
echo
echo "SPARK JOBS DONE!"
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
