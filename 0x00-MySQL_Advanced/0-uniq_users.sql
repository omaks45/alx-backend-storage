-- A script that create a table called users
-- has id, email and name as requirements

CREATE TABLE IF NOT EXITS users(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email varchar(255) NOT NULL UNIQUE,
	name varchar(255)
);
