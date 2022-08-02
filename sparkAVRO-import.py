#!/usr/bin/env python
# coding: utf-8

import configparser
from pyspark.sql import SparkSession
from pyspark import SparkConf,SQLContext,HiveContext,SparkContext
from pyspark.sql.types import (StructField,StringType,IntegerType,FloatType,StructType)

#
pg_schema = [StructField('Date_Time', StringType(),True),
	StructField('Plant_ID', StringType(),True),
	StructField('Source_Key', StringType(),True),
	StructField('DC_Power', FloatType(),True),
	StructField('AC_Power', FloatType(),True),
	StructField('Daily_Yield', FloatType(),True),
	StructField('Total_Yield', FloatType(),True)]
	
ws_schema = [StructField('Date_Time', StringType(),True),
	StructField('Plant_ID', StringType(),True),
	StructField('Source_Key', StringType(),True),
	StructField('Ambient_Temperature', FloatType(),True),
	StructField('Module_Temperature', FloatType(),True),
	StructField('Irradiation', FloatType(),True)]

struc_pg = StructType(fields=pg_schema)
struc_ws = StructType(fields=ws_schema)

#################################################################
#		CSV FILE instance of SparkSession 
#################################################################
spark_csv = SparkSession.builder. \
	appName("spark-csv2avro"). \
	master("local[*]").getOrCreate()
# create a dataframe of a csv file
p1ws_df = spark_csv.read.csv('file:///home/aaron/solarpowerplants/Plant_1_Weather_Sensor_Data.csv', schema=struc_ws, header=True)
# send dataframe to hdfs
p1ws_df.write.format("avro").save("/spp/csv/p1ws")

######################################################################
# 		MySQL instance of SparkSession 
######################################################################
mysql_connector = "/usr/local/spark-3.0.1/jars/mysql-connector-java-8.0.21.jar"

spark_mysql = SparkSession.builder. \
	appName("Spark_DF"). \
	master("local[*]"). \
	config("spark.jars", mysql_connector). \
	getOrCreate()
# Initiate a MySQL SparkContext
sc_mysql = spark_mysql.sparkContext
# Initiate a MySQL SQLContext
sqlc_mysql = SQLContext(sc_mysql)

######################################################################
# 		PostgreSQL instance of SparkSession 
######################################################################
postgresql_connector = "/usr/local/spark-3.0.1/jars/postgresql-42.2.16.jar"

spark_postgresql = SparkSession.builder. \
	appName("Spark_DF"). \
	master("local[*]"). \
	config("spark.jars", postgresql_connector). \
	getOrCreate()
	
# Initiate a PostgreSQL SparkContext
sc_postgresql = spark_postgresql.sparkContext
# Initiate a PostgreSQL SQLContext
sqlc_postgresql = SQLContext(sc_postgresql)

######################################################################
# 		SQLServer instance of SparkSession
######################################################################
sqlserver_connector = "/usr/local/spark-3.0.1/jars/mssql-jdbc-8.4.1.jre8.jar"

spark_sqlserver = SparkSession.builder. \
	appName("Spark_DF"). \
	master("local[*]"). \
	config("spark.jars", sqlserver_connector). \
	getOrCreate()
	
# Initiate a SQLServer SparkContext
sc_sqlserver = spark_sqlserver.sparkContext
# Initiate a SQLServer SQLContext
sqlc_sqlserver = SQLContext(sc_sqlserver)

#####################################################################
#		Fetching usernames and passwords for each RDMS 
#####################################################################
# Declare variable for path ID's (usernames and passwords)
id_locations = '/home/aaron/Documents/scripts/project1/projID.ini'
# Intitiate config
config = configparser.ConfigParser()
config.read('/home/aaron/Documents/scripts/project1/projID.ini')
# Declare username and password variables for each RDMS
mysql_user = config['mysql']['user']
mysql_password = config['mysql']['password']
postgresql_user  = config['postgresql']['user']
postgresql_password = config['postgresql']['password']
sqlserver_user = config['sqlserver']['user']
sqlserver_password = config['sqlserver']['password']

####################################################################
# Declaring dataframes for each RDMS and writing them to HDFS
####################################################################

tables = ["p1g", "p1ws", "p2g", "p2ws"]
for table in tables:
# MySQL
	mysql_df = spark_mysql.read.format("jdbc"). \
		option('url', 'jdbc:mysql://localhost:3306/spp'). \
		option('user', mysql_user). \
		option('password', mysql_password). \
		option('dbtable', table).load()
	mysql_df.write.format("avro").save("/spp/mysql/" + table)
	
# PostgreSQL
	postgresql_df = spark_postgresql.read.format("jdbc"). \
		option('url', 'jdbc:postgresql://localhost:5432/spp'). \
		option('user', postgresql_user). \
		option('password', postgresql_password). \
		option('dbtable', table).load()
	postgresql_df.write.format("avro").save("/spp/postgresql/" + table)
		
# SQLServer
	sqlserver_df = spark_sqlserver.read.format("jdbc"). \
		option('url', 'jdbc:sqlserver://localhost:1433;databaseName=spp'). \
		option('user', sqlserver_user). \
		option('password', sqlserver_password). \
		option('dbtable', table).load()
	sqlserver_df.write.format("avro").save("/spp/sqlserver/" + table)
	

# END
