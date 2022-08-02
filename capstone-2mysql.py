#!/usr/bin/env python
# coding: utf-8

import configparser
from pyspark.sql import SparkSession

# Declare variable for mysql_connector path/directory
mysql_connector = "/usr/local/spark-3.0.1/jars/mysql-connector-java-8.0.21.jar"
# MySQL instance of SparkSession with Hive Support
spark_mysql = SparkSession.builder. \
	appName("Hive_Spark_DF"). \
	master("local[*]"). \
	config("spark.jars", mysql_connector). \
	enableHiveSupport(). \
	getOrCreate()

# Transforming tables from data service layer in Hive to dataframes

rates_df = spark_mysql.sql("SELECT * FROM dsl.rates where rate > 100")

# Declare variable for path ID's (usernames and passwords)
id_locations = '/home/aaron/Documents/scripts/project1/projID.ini'
# Intitiate config
config = configparser.ConfigParser()
config.read('/home/aaron/Documents/scripts/project1/projID.ini')
# Declare username and password variables for each RDMS
mysql_user = config['mysql']['user']
mysql_password = config['mysql']['password']

# Declare jdbc url for mysql
mysql_url = "jdbc:mysql://localhost:3306/capstone"

# Declare driver format
foramt = "jdbc"

# Declare funtion to write to MySQL
def Hive_to_MySQL(tb_df, table, user, password, dFormat, url):
    tb_df.write \
        .format(dFormat) \
        .option('url', url) \
        .option('user', user) \
        .option('password', password) \
        .option('dbtable', table) \
        .save()
        
# Writing to MySQL
Hive_to_MySQL(rates_df, "rates", mysql_user, mysql_password, foramt, mysql_url)

# END
