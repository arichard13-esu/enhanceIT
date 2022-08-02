#!/usr/bin/env python
# coding: utf-8

from pyspark.sql import SparkSession
from pyspark import SparkConf,SQLContext,HiveContext,SparkContext

spark = SparkSession.builder.appName("Spark_DF").master("local[*]").config("spark.jars", "/usr/local/spark-3.0.1/jars/mssql-jdbc-8.4.1.jre8.jar").getOrCreate()

sc = spark.sparkContext
sqlc = SQLContext(sc)

p1g_df = spark.read.format("jdbc"). \
	option('url', 'jdbc:sqlserver://localhost:1433;databaseName=spp'). \
	option('user', 'SA').option('password', 'Aa19892152'). \
	option('dbtable', 'p1g').load()

p2ws_df = spark.read.format("jdbc"). \
	option('url', 'jdbc:sqlserver://localhost:1433;databaseName=spp'). \
	option('user', 'SA')     .option('password', 'Aa19892152'). \
	option('dbtable', 'p2ws').load()

p2g_df = spark.read.format("jdbc"). \
	option('url', 'jdbc:sqlserver://localhost:1433;databaseName=spp'). \
	option('user', 'SA')     .option('password', 'Aa19892152'). \
	option('dbtable', 'p2g').load()

p1g_df.write.format("csv").save("/spp/sqlserver/p1g")
p2ws_df.write.format("csv").save("/spp/sqlserver/p2ws")
p2g_df.write.format("csv").save("/spp/sqlserver/p2g")
