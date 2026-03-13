--01. INNER JOIN: Basic Intersection.
    SELECT users.username, users.gender, addresses.city
    FROM users INNER JOIN addresses
    ON users.id = addresses.user_id;

--02. LEFT JOIN: Show me everything from the left table, and attach matching data from the right table if it exists.
    --a) Show all users & their addresses (if they exist):
        SELECT users.username, users.gender, addresses.city
        FROM users LEFT JOIN addresses
        ON users.id = addresses.user_id;
    --b) Show all addresses & their users (if they exist):
        SELECT users.username, users.gender, addresses.city
        FROM addresses LEFT JOIN users
        ON users.id = addresses.user_id;

--03. RIGHT JOIN: Same as ibid, but on the right.