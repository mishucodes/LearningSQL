--POSTGRESQL VERSION

--Basic Navigation (psql client commands):
\l; --list databases
create database database_name; --create a folder
\c database_name; --connect to a database
\dt; --show tables in current database
\d table_name; --describe table structure


--Creating a Table:
create table table_name (column1 datatype constraints, column2 datatype constraints);

--Renaming a Table:
alter table a rename to b;

--Modifying a Table:
alter table table_name add column column_name datatype constraints; --adding a column
alter table table_name drop column column_name; --removing a column
alter table table_name alter column column_name type datatype; --changing datatype

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
delete from table_name where column1 = someValue or column2 = someValue;