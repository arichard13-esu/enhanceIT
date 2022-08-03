#!/bin/bash
#
for TABLE in p1g p2g p1ws p2ws
do
	sqoop job --delete mysql$TABLE
	sqoop job --delete postgresql$TABLE
	sqoop job --delete sqlserver$TABLE	
done
