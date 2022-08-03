--
-- This script will drop external tables in HIVE
--
USE raw;
-- _______________________________csv______________________________

DROP TABLE raw.csv_p1ws;
-- ______________________________MySQL____________________________

DROP TABLE raw.mysql_p1g;
DROP TABLE raw.mysql_p2g;
DROP TABLE raw.mysql_p1ws;
DROP TABLE raw.mysql_p2ws;
--
-- ____________________________PostgreSQL____________________________
--
DROP TABLE raw.postgresql_p1g;
DROP TABLE raw.postgresql_p2g;
DROP TABLE raw.postgresql_p1ws;
DROP TABLE raw.postgresql_p2ws;
--
-- ____________________________SQL_Server____________________________
--
DROP TABLE raw.sqlserver_p1g;
DROP TABLE raw.sqlserver_p2g;
DROP TABLE raw.sqlserver_p1ws;
DROP TABLE raw.sqlserver_p2ws;
--
DROP DATABASE raw;
