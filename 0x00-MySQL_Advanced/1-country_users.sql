-- A script that creates user table
-- id, email, name and country as the table attribute
-- the enumerate keyword is to be used on country

CREATE TABLE IF NOT EXISTS users(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255),
	country enum('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
