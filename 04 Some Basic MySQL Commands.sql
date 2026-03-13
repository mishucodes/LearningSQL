--Some Basic Queries:
show databases; --show folders
create database database_name; --create a folder
create database if not exists database_name; --create a folder if it doesn't exist
use database_name; --open folder
show tables; --show excel files
describe table_name; --see excel file's columns


--Creating a Table:
create table table_name (column1 datatype constraints, column2 datatype constraints);
--Renaming a Table:
rename table a to b;
--Modifying a Table:
alter table table_name add column column_name datatype constraints; --adding a column
alter table table_name drop column column_name; --removing a column
alter table table_name modify column column_name datatype constraints; --changing the datatype for a column
alter table table_name modify column column_name datatype constraints after other_column; --move a column after another column
alter table table_name modify column column_name datatype constraints first; --move a column to the first position
--Deleting a Table:
drop table table_name;
truncate table table_name; --removes all rows but keeps the table


--CRUD Operations in a Table:
C
insert into table_name values (value1, value2, value3, value4);
insert into table_name (column1, column2) values (value1, value2);
R
select * from table_name;
select column1, column2 from table_name where column1 = someValue and (column2 = someValue or column3 = someValue);
select * from table_name limit 10; --shows first 10 rows
select * from table_name order by column1 asc;
select * from table_name order by column1 desc;
U
update table_name set column1 = newValue where column2 = someValue and column3 = someValue;
D
delete from table_name where column1 = someValue or  column2 = someValue;