#!/bin/bash
#
echo "Choose directory to delete"
echo "1) MySQL"
echo "2) PostgreSQL"
echo "3) SQL Server"
echo "4) csv"
echo "5) All"

read x

case $x in
   	1) hdfs dfs -rm -r /spp/mysql ;;
	2) hdfs dfs -rm -r /spp/postgresql ;;	
	3) hdfs dfs -rm -r /spp/sqlserver ;;	
	4) hdfs dfs -rm -r /spp/Plant_1_Weather_Sensor_Data.csv ;;	
	5) hdfs dfs -rm -r /spp ;; 	
   	*) echo "ERROR: Please try again." ;;
esac
