--
-- This script will create external tables in HIVE from HDFS
--
CREATE DATABASE raw;
USE raw;
--
--_______________________________csv_____________________________

CREATE EXTERNAL TABLE raw.csv_p1ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/csv/p1ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/csv/p1ws/';

--______________________________MySQL____________________________

CREATE EXTERNAL TABLE raw.mysql_p1g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/mysql/p1g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/mysql/p1g/';

CREATE EXTERNAL TABLE raw.mysql_p1ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/mysql/p1ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/mysql/p1ws/';

CREATE EXTERNAL TABLE raw.mysql_p2g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/mysql/p2g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/mysql/p2g/';

CREATE EXTERNAL TABLE raw.mysql_p2ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/mysql/p2ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/mysql/p2ws/';

--____________________________PostgreSQL____________________________

CREATE EXTERNAL TABLE raw.postgresql_p1g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/postgresql/p1g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/postgresql/p1g/';

CREATE EXTERNAL TABLE raw.postgresql_p1ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/postgresql/p1ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/postgresql/p1ws/';

CREATE EXTERNAL TABLE raw.postgresql_p2g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/postgresql/p2g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/postgresql/p2g/';

CREATE EXTERNAL TABLE raw.postgresql_p2ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/postgresql/p2ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/postgresql/p2ws/';

--____________________________SQL_Server____________________________

CREATE EXTERNAL TABLE raw.sqlserver_p1g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/sqlserver/p1g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/sqlserver/p1g/';

CREATE EXTERNAL TABLE raw.sqlserver_p1ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/sqlserver/p1ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/sqlserver/p1ws/';

CREATE EXTERNAL TABLE raw.sqlserver_p2g ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/sqlserver/p2g.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/sqlserver/p2g/';

CREATE EXTERNAL TABLE raw.sqlserver_p2ws ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' WITH SERDEPROPERTIES ('avro.schema.url'='file:///home/aaron/eggs/sqlserver/p2ws.avsc') STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' LOCATION '/spp/sqlserver/p2ws/';

CREATE DATABASE dsl;
