CREATE DATABASE movies;
USE movies;

CREATE TABLE directors (
	id INT PRIMARY KEY AUTO_INCREMENT,
	director_name VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE genres (
	id INT PRIMARY KEY AUTO_INCREMENT,
	genre_name VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE categories (
	id INT PRIMARY KEY AUTO_INCREMENT,
	category_name VARCHAR(50) NOT NULL,
	notes TEXT
);

CREATE TABLE movies(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	director_id INT NOT NULL,
	copyright_year YEAR NOT NULL,
	length TIME NOT NULL,
	genre_id INT NOT NULL,
	category_id INT NOT NULL,
	rating INT,
	notes TEXT
);


INSERT INTO directors (director_name)
VALUES ('stamat'), ('ivan'), ('pesho'), ('tosho'), ('anna');

INSERT INTO genres (genre_name)
VALUES ('comedy'), ('drama'), ('thriler'), ('action'), ('fantasy');

INSERT INTO categories (category_name)
VALUES ('documental'), ('student'), ('learning'), ('blogbusters'),
('popular');

INSERT INTO movies (title, director_id, copyright_year, length, genre_id, category_id)
VALUES ("Rambo1", '1', '1985', '01:55:00', '4', '4'), 
		 ("Rambo2", '1', '1988', '01:25:52', '4', '4'),
		 ("Rambo3", '1', '1990', '02:05:02', '4', '4'),
		 ("Rambo4", '1', '1992', '02:10:05', '4', '4'),
		 ("Rambo5", '1', '2000', '02:30:01', '4', '4');






