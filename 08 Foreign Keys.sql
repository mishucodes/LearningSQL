--EXAMPLE:
create table addresses
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);