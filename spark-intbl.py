from pyspark.sql import SparkSession, Row
from pyspark import SparkConf,SQLContext,HiveContext,SparkContext

spark = SparkSession.builder.appName("hiveSparkavro2orc"). \
	master("local[*]"). \
	enableHiveSupport(). \
	getOrCreate()

csv_p1ws_df = spark.sql('select * from raw.csv_p1ws');

mysql_p1g_df = spark.sql('select * from raw.mysql_p1g');
mysql_p1ws_df = spark.sql('select * from raw.mysql_p1ws');
mysql_p2g_df = spark.sql('select * from raw.mysql_p2g');
mysql_p2ws_df = spark.sql('select * from raw.mysql_p2ws');

postgresql_p1g_df = spark.sql('select * from raw.postgresql_p1g');
postgresql_p1ws_df = spark.sql('select * from raw.postgresql_p1ws');
postgresql_p1g_df = spark.sql('select * from raw.postgresql_p2g');
postgresql_p2ws_df = spark.sql('select * from raw.postgresql_p2ws');

sqlserver_p1g_df = spark.sql('select * from raw.sqlserver_p1g');
sqlserver_p1ws_df = spark.sql('select * from raw.sqlserver_p1ws');
sqlserver_p2g_df = spark.sql('select * from raw.sqlserver_p2g');
sqlserver_p2ws_df = spark.sql('select * from raw.sqlserver_p2ws');

csv_p1ws_df.write.format('orc').saveAsTable('dsl.csv_p1ws');

mysql_p1g_df.write.format('orc').saveAsTable('dsl.mysql_p1g');
mysql_p1ws_df.write.format('orc').saveAsTable('dsl.mysql_p1ws');
mysql_p2g_df.write.format('orc').saveAsTable('dsl.mysql_p2g');
mysql_p2ws_df.write.format('orc').saveAsTable('dsl.mysql_p2ws');

postgresql_p1g_df.write.format('orc').saveAsTable('dsl.postgresql_p1g');
postgresql_p1ws_df.write.format('orc').saveAsTable('dsl.postgresql_p1ws');
postgresql_p1g_df.write.format('orc').saveAsTable('dsl.postgresql_p2g');
postgresql_p2ws_df.write.format('orc').saveAsTable('dsl.postgresql_p2ws');

sqlserver_p1g_df.write.format('orc').saveAsTable('dsl.sqlserver_p1g');
sqlserver_p1ws_df.write.format('orc').saveAsTable('dsl.sqlserver_p1ws');
sqlserver_p2g_df.write.format('orc').saveAsTable('dsl.sqlserver_p2g');
sqlserver_p2ws_df.write.format('orc').saveAsTable('dsl.sqlserver_p2ws');
