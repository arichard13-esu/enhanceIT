-- This script will create internal tables in HIVE from HDFS
--
CREATE DATABASE hbase;
USE hbase;
--
--_______________________________csv_____________________________

CREATE TABLE csv_p1ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE csv_p1ws(SELECT * FROM dsl.csv_p1ws);
--______________________________MySQL____________________________

CREATE TABLE mysql_p1g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE mysql_p1g(SELECT * FROM dsl.mysql_p1g);

CREATE TABLE mysql_p2g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE mysql_p2g(SELECT * FROM dsl.mysql_p2g);

CREATE TABLE mysql_p1ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE mysql_p1ws(SELECT * FROM dsl.mysql_p1ws);

CREATE TABLE mysql_p2ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE mysql_p2ws(SELECT * FROM dsl.mysql_p2ws);

--____________________________PostgreSQL____________________________

CREATE TABLE postgresql_p1g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE postgresql_p1g(SELECT * FROM dsl.postgresql_p1g);

CREATE TABLE postgresql_p2g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE postgresql_p2g(SELECT * FROM dsl.postgresql_p2g);

CREATE TABLE postgresql_p1ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE postgresql_p1ws(SELECT * FROM dsl.postgresql_p1ws);

CREATE TABLE postgresql_p2ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE postgresql_p2ws(SELECT * FROM dsl.postgresql_p2ws);

--____________________________SQL_Server____________________________

CREATE TABLE sqlserver_p1g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE sqlserver_p1g(SELECT * FROM dsl.sqlserver_p1g);

CREATE TABLE sqlserver_p2g(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES ("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:DC_Power,cf2:AC_Power,cf2:Daily_Yield,cf2:Total_Yield");
INSERT OVERWRITE TABLE sqlserver_p2g(SELECT * FROM dsl.sqlserver_p2g);

CREATE TABLE sqlserver_p1ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE sqlserver_p1ws(SELECT * FROM dsl.sqlserver_p1ws);

CREATE TABLE sqlserver_p2ws(ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES("hbase.columns.mapping"=":key,cf1:Date_Time,cf1:Plant_ID,cf1:Source_Key,cf2:Ambient_Temperature ,cf2:Module_Temperature, cf2:Irradiation");
INSERT OVERWRITE TABLE sqlserver_p2ws(SELECT * FROM dsl.sqlserver_p2ws);
