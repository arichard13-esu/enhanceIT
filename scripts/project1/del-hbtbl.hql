--
-- This script will drop internal tables in HIVE
--
USE hbase;
-- _______________________________csv______________________________

DROP TABLE hbase.csv_p1ws;
-- ______________________________MySQL____________________________

DROP TABLE hbase.mysql_p1g;
DROP TABLE hbase.mysql_p2g;
DROP TABLE hbase.mysql_p1ws;
DROP TABLE hbase.mysql_p2ws;
--
-- ____________________________PostgreSQL____________________________
--
DROP TABLE hbase.postgresql_p1g;
DROP TABLE hbase.postgresql_p2g;
DROP TABLE hbase.postgresql_p1ws;
DROP TABLE hbase.postgresql_p2ws;
--
-- ____________________________SQL_Server____________________________
--
DROP TABLE hbase.sqlserver_p1g;
DROP TABLE hbase.sqlserver_p2g;
DROP TABLE hbase.sqlserver_p1ws;
DROP TABLE hbase.sqlserver_p2ws;
--
DROP DATABASE hbase;
