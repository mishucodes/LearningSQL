-- This is my best take on how I would create a users table. My priorities were making it foolproof, very stingy, & as scalable as possible:
CREATE TABLE users
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    username VARCHAR(12) NOT NULL UNIQUE, --can handle upto 99,246,877,751,681,402 users even if the username is case-insensitive...
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash CHAR(60) NOT NULL,

    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),

    birth_date DATE,
    age TINYINT UNSIGNED,
    gender ENUM('male', 'female', 'undisclosed'),

    phone VARCHAR(20) UNIQUE,

    country CHAR(2),
    city VARCHAR(100),

    email_verified BOOLEAN NOT NULL DEFAULT FALSE,
    phone_verified BOOLEAN NOT NULL DEFAULT FALSE,

    login_count INT UNSIGNED NOT NULL DEFAULT 0, --roughly four billion logins possible

    last_login_at TIMESTAMP NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP
);


--Suppose we wanna update the ages of all the users in an old Database:
UPDATE users SET age = TIMESTAMPDIFF(YEAR, birth_date, CURDATE());