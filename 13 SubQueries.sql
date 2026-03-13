--01. SUBQUERY: A Query within a query. We use it to "divide & conquer" certain problems. They're like Nested function calls.

--Example:
    SELECT * FROM admins WHERE salary < (SELECT avg(salary) FROM admins);