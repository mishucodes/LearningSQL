--COUNT:
SELECT COUNT(*) FROM table_name; --shows the number of rows in the table
SELECT COUNT(*) FROM table_name WHERE some_column = some_value; --shows the number of rows in the table that pass this test

--MIN, MAX, & AS:
SELECT MIN(some_column) AS x, MAX(some_column) AS y;

--SUM:
SELECT SUM(some_column) AS x FROM table_name;

--AVG:
SELECT AVG(some_column) AS x FROM table_name;

--GROUP BY: Not very sure tbh
SELECT gender, AVG(salary) AS average_salary FROM users GROUP BY gender;

--LENGTH: Number of Bytes
SELECT LENGTH(some_column) AS x FROM table_name;

--LOWER: Converts toLowerCase()
SELECT LOWER(some_column) AS x FROM table_name;

--CONCAT:
SELECT CONCAT(some_column, some_column) AS x FROM table_name;

--NOW, YEAR, MONTH, WEEK, DAY, HOUR, MINUTE, SECOND:
SELECT NOW() AS x;
SELECT YEAR(some_date) AS x;
SELECT MONTH(some_date) AS x;
SELECT WEEK(some_date) AS x;
SELECT DAY(some_date) AS x;
SELECT HOUR(some_date) AS x;
SELECT MINUTE(some_date) AS x;
SELECT SECOND(some_date) AS x;

--DATEDIFF, CURDATE:
SELECT DATEDIFF(some_date, some_date) AS x;
SELECT CURDATE() AS x;

--MATHEMATICAL FUNCTIONS:
    ROUND()
    FLOOR()
    CEIL()
    MOD()
    
--CONDITIONAL FUNCTIONS:
    IF()