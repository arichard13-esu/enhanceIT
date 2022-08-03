-- This script will create internal tables in HIVE from external tables
--
CREATE DATABASE dsl;
USE dsl;
--
--_______________________________csv_____________________________

CREATE TABLE csv_p1ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO csv_p1ws (SELECT ROW_NUMBER() OVER(), * FROM raw.csv_p1ws);
--______________________________MySQL____________________________

CREATE TABLE mysql_p1g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO mysql_p1g (SELECT ROW_NUMBER() OVER(), * FROM raw.mysql_p1g);

CREATE TABLE mysql_p2g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO mysql_p2g (SELECT ROW_NUMBER() OVER(), * FROM raw.mysql_p2g);

CREATE TABLE mysql_p1ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO mysql_p1ws (SELECT ROW_NUMBER() OVER(), * FROM raw.mysql_p1ws);

CREATE TABLE mysql_p2ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO mysql_p2ws (SELECT ROW_NUMBER() OVER(), * FROM raw.mysql_p2ws);

--____________________________PostgreSQL____________________________

CREATE TABLE postgresql_p1g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO postgresql_p1g (SELECT ROW_NUMBER() OVER(), * FROM raw.postgresql_p1g);

CREATE TABLE postgresql_p2g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO postgresql_p2g (SELECT ROW_NUMBER() OVER(), * FROM raw.postgresql_p2g);

CREATE TABLE postgresql_p1ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO postgresql_p1ws (SELECT ROW_NUMBER() OVER(), * FROM raw.postgresql_p1ws);

CREATE TABLE postgresql_p2ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO postgresql_p2ws (SELECT ROW_NUMBER() OVER(), * FROM raw.postgresql_p2ws);

--____________________________SQL_Server____________________________

CREATE TABLE sqlserver_p1g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO sqlserver_p1g (SELECT ROW_NUMBER() OVER(), * FROM raw.sqlserver_p1g);

CREATE TABLE sqlserver_p2g (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), DC_Power double, AC_Power double, Daily_Yield double, Total_Yield double) row format delimited fields terminated by ',';
INSERT INTO sqlserver_p2g (SELECT ROW_NUMBER() OVER(), * FROM raw.sqlserver_p2g);

CREATE TABLE sqlserver_p1ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO sqlserver_p1ws (SELECT ROW_NUMBER() OVER(), * FROM raw.sqlserver_p1ws);

CREATE TABLE sqlserver_p2ws (ID int, Date_Time varchar(20), Plant_ID varchar(10), Source_Key varchar(15), Ambient_Temperature double, Module_Temperature double, Irradiation double) row format delimited fields terminated by ',';
INSERT INTO sqlserver_p2ws (SELECT ROW_NUMBER() OVER(), * FROM raw.sqlserver_p2ws);
