CREATE TABLE users (
	id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	username VARCHAR(30) UNIQUE NOT NULL,
	password VARCHAR(26) NOT NULL,
	profile_picture BLOB,	
	last_login_time DATETIME NOT NULL,
	is_deleted INT  	
);

INSERT INTO users (username, password, profile_picture, last_login_time, is_deleted)
VALUES ('Pesho', 'ab123cd', NULL, '1972-01-01', 0),
		 ('Tosho', 'alabala', NULL, '1982-02-02', 1),
		 ('Gery', 'blabla', NULL, '2000-03-03', 0),
		 ('Anni', '7878cd', NULL, '2002-04-04', 1),
		 ('Niki', 'ab987ef', NULL, '2004-05-05', 0);