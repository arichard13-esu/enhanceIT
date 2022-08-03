#!/bin/bash
# This script will import csv and RDMS tables to HDFS using Sqoop
#
hdfs dfs -mkdir /spp
hdfs dfs -mkdir /spp/mysql
hdfs dfs -mkdir /spp/postgresql
hdfs dfs -mkdir /spp/sqlserver
hdfs dfs -mkdir /spp/csv
hdfs dfs -put /home/aaron/solarpowerplants/Plant_1_Weather_Sensor_Data.csv /spp/csv
#
for TABLE in p1g p2g p1ws p2ws
do # MySQL ______________________________________________
	if [[ "$TABLE" == "p1g" || "$TABLE" == "p2g" ]];
	then 	# Generation
		echo "importing $TABLE"
		sqoop job --create mysql$TABLE -- import \
		--connect jdbc:mysql://localhost/spp \
		--username root \
		--password test123 \
		--m 1 \
		--columns 'Date_Time, Plant_ID, Source_Key, DC_Power, AC_Power, Daily_Yield, Total_Yield' \
		--table $TABLE \
		--target-dir /spp/mysql/$TABLE
		sqoop job --exec mysql$TABLE
	elif [[ "$TABLE" == "p1ws" || "$TABLE" == "p2ws" ]];
	then 	# Weather Senor
		echo "importing $TABLE"
		sqoop job --create mysql$TABLE -- import \
		--connect jdbc:mysql://localhost/spp \
		--username root \
		--password test123 \
		--m 1 \
		--columns 'Date_Time, Plant_ID, Source_Key, Ambient_Temperature, Module_Temperature, Irradiation' \
		--table $TABLE \
		--target-dir /spp/mysql/$TABLE
		sqoop job --exec mysql$TABLE
	fi
# PostgreSQL _________________________________________
	sqoop job --create postgresql$TABLE -- import \
	--connect jdbc:postgresql://localhost:5432/spp \
	--username postgres \
	--password test123 \
	--m 1 \
	--table $TABLE \
	--target-dir /spp/postgresql/$TABLE
	sqoop job --exec postgresql$TABLE
# SQL Server _________________________________________
	sqoop job --create sqlserver$TABLE -- import \
	--connect 'jdbc:sqlserver://localhost:1433;databaseName=spp' \
	--username 'SA' \
	--password Aa19892152\
	--m 1 \
	--table $TABLE\
	--target-dir /spp/sqlserver/$TABLE
	sqoop job --exec sqlserver$TABLE
done
