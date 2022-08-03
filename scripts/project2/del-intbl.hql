--
-- This script will drop internal tables in HIVE
--
USE dsl;
-- _______________________________csv______________________________

DROP TABLE dsl.csv_p1ws;
-- ______________________________MySQL____________________________

DROP TABLE dsl.mysql_p1g;
DROP TABLE dsl.mysql_p2g;
DROP TABLE dsl.mysql_p1ws;
DROP TABLE dsl.mysql_p2ws;
--
-- ____________________________PostgreSQL____________________________
--
DROP TABLE dsl.postgresql_p1g;
DROP TABLE dsl.postgresql_p2g;
DROP TABLE dsl.postgresql_p1ws;
DROP TABLE dsl.postgresql_p2ws;
--
-- ____________________________SQL_Server____________________________
--
DROP TABLE dsl.sqlserver_p1g;
DROP TABLE dsl.sqlserver_p2g;
DROP TABLE dsl.sqlserver_p1ws;
DROP TABLE dsl.sqlserver_p2ws;
--
DROP DATABASE dsl;
