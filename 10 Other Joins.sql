--01. UNION: Basic Union. Duplicates are merged.
    SELECT username, "User" as role FROM users
    UNION
    SELECT username, "Admin" as role FROM admins;

--02. UNION ALL: Basic Union. Duplicates are not merged.
    SELECT username, gender, date_of_birth FROM users
    UNION ALL
    SELECT username, gender, date_of_birth FROM admins
    ORDER BY date_of_birth;

--03. SELF JOIN: Join a table by itself. Here's an Example:
    --a) Let's see those users who got referred by someone:
        SELECT a.id, a.username, b.username as referred_by_name
        FROM users a INNER JOIN users b
        ON a.referred_by_id = b.id;
    --b) Let's see all the users & their referrals:
        SELECT a.id, a.username, b.username as referred_by_name
        FROM users a LEFT JOIN users b
        ON a.referred_by_id = b.id;