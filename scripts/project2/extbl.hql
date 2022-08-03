--
-- This script will create external tables in HIVE from HDFS
--
CREATE DATABASE raw;
USE raw;
--
--_______________________________csv_____________________________

CREATE EXTERNAL TABLE csv_p1ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/csv/';
--______________________________MySQL____________________________

CREATE EXTERNAL TABLE mysql_p1g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/mysql/p1g/';

CREATE EXTERNAL TABLE mysql_p2g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/mysql/p2g/';

CREATE EXTERNAL TABLE mysql_p1ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/mysql/p1ws/';

CREATE EXTERNAL TABLE mysql_p2ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/mysql/p2ws/';

--____________________________PostgreSQL____________________________

CREATE EXTERNAL TABLE postgresql_p1g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/postgresql/p1g/';

CREATE EXTERNAL TABLE postgresql_p2g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/postgresql/p2g/';

CREATE EXTERNAL TABLE postgresql_p1ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/postgresql/p1ws/';

CREATE EXTERNAL TABLE postgresql_p2ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/postgresql/p2ws/';

--____________________________SQL_Server____________________________

CREATE EXTERNAL TABLE sqlserver_p1g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/sqlserver/p1g/';

CREATE EXTERNAL TABLE sqlserver_p2g (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/sqlserver/p2g/';

CREATE EXTERNAL TABLE sqlserver_p1ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/sqlserver/p1ws/';

CREATE EXTERNAL TABLE sqlserver_p2ws (Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = "\"") LOCATION '/spp/sqlserver/p2ws/';
