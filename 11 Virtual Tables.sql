--01. VIRTUAL TABLE / VIEWS: It's a virtual table. It does not store new data; it simply shows the result of a query as if it were a table.

--Creating a View:
    CREATE VIEW genz_users AS
    SELECT * FROM users WHERE date_of_birth > '2000-01-01';

--Deleting it:
    DROP VIEW genz_users;