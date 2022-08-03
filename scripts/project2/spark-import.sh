#!/bin/bash
# Import data to hive and hbase
#
hdfs dfs -mkdir /spp
hdfs dfs -mkdir /spp/csv
hdfs dfs -put /home/aaron/solarpowerplants/Plant_1_Weather_Sensor_Data.csv /spp/csv

spark-submit /usr/local/spark-3.0.1/python/spark-jobs/sparkRDMS-import.py

