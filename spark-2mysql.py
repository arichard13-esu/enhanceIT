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
csv_p1ws_df = spark_mysql.sql("SELECT * FROM dsl.csv_p1ws")

mysql_p1g_df = spark_mysql.sql("SELECT * FROM dsl.mysql_p1g")
mysql_p1ws_df = spark_mysql.sql("SELECT * FROM dsl.mysql_p1ws")
mysql_p2g_df = spark_mysql.sql("SELECT * FROM dsl.mysql_p2g")
mysql_p2ws_df = spark_mysql.sql("SELECT * FROM dsl.mysql_p2ws")

postgresql_p1g_df = spark_mysql.sql("SELECT * FROM dsl.postgresql_p1g")
postgresql_p1ws_df = spark_mysql.sql("SELECT * FROM dsl.postgresql_p1ws")
postgresql_p2g_df = spark_mysql.sql("SELECT * FROM dsl.postgresql_p2g")
postgresql_p2ws_df = spark_mysql.sql("SELECT * FROM dsl.postgresql_p2ws")

sqlserver_p1g_df = spark_mysql.sql("SELECT * FROM dsl.sqlserver_p1g")
sqlserver_p1ws_df = spark_mysql.sql("SELECT * FROM dsl.sqlserver_p1ws")
sqlserver_p2g_df = spark_mysql.sql("SELECT * FROM dsl.sqlserver_p2g")
sqlserver_p2ws_df = spark_mysql.sql("SELECT * FROM dsl.sqlserver_p2ws")

# Declare variable for path ID's (usernames and passwords)
id_locations = '/home/aaron/Documents/scripts/project1/projID.ini'
# Intitiate config
config = configparser.ConfigParser()
config.read('/home/aaron/Documents/scripts/project1/projID.ini')
# Declare username and password variables for each RDMS
mysql_user = config['mysql']['user']
mysql_password = config['mysql']['password']

# Declare jdbc url for mysql
mysql_url = "jdbc:mysql://localhost:3306/warehouse"

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
Hive_to_MySQL(csv_p1ws_df, "csv_p1ws", mysql_user, mysql_password, foramt, mysql_url)

Hive_to_MySQL(mysql_p1g_df, "mysql_p1g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(mysql_p1ws_df, "mysql_p1ws", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(mysql_p2g_df, "mysql_p2g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(mysql_p2ws_df, "mysql_p2ws", mysql_user, mysql_password, foramt, mysql_url)

Hive_to_MySQL(postgresql_p1g_df, "postgresql_p1g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(postgresql_p1ws_df, "postgresql_p1ws", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(postgresql_p2g_df, "postgresql_p2g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(postgresql_p2ws_df, "postgresql_p2ws", mysql_user, mysql_password, foramt, mysql_url)

Hive_to_MySQL(sqlserver_p1g_df, "sqlserver_p1g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(sqlserver_p1ws_df, "sqlserver_p1ws", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(sqlserver_p2g_df, "sqlserver_p2g", mysql_user, mysql_password, foramt, mysql_url)
Hive_to_MySQL(sqlserver_p2ws_df, "sqlserver_p2ws", mysql_user, mysql_password, foramt, mysql_url)

# END
