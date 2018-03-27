CREATE TABLE people (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(200) NOT NULL,
	picture BLOB,
	height DOUBLE(10, 2),
	weight DOUBLE(10, 2),
	gender CHAR(1) NOT NULL, /* https://forums.mysql.com/read.php?43,200241,200247 */ /* gender ENUM('f', 'm') NOT NULL,*/
	birthdate DATETIME NOT NULL,
	biography TEXT    /* https://dev.mysql.com/doc/refman/5.7/en/string-type-overview.html */	
);

INSERT INTO people (name, picture, height, weight, gender, birthdate, biography)
VALUES ('Pesho', NULL, 5.45, 5.45, 'm', '1972-01-01', 'alabalaalabala'),
		 ('Tosho', NULL, 7.62, 7.62, 'm', '1982-02-02', 'blablablablablabla'),
		 ('Gery', NULL, 22.02, 3.14, 'f', '2000-03-03', 'totototototototo'),
		 ('Anni', NULL, 10.05, 14.55, 'f', '2002-04-04', 'annianniannianni'),
		 ('Niki', NULL, 200.05, 200.05, 'f', '2004-05-05', 'nikinikinikinikiniki');

