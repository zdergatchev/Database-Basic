CREATE DATABASE car_rental;
USE car_rental; 

CREATE TABLE categories (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	category VARCHAR(50) NOT NULL,
	daily_rate FLOAT,
	weekly_rate FLOAT,
	monthly_rate FLOAT,
	weekend_rate FLOAT
);

CREATE TABLE cars (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	plate_number VARCHAR(50) NOT NULL,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	car_year YEAR,
	category_id INT,
	doors INT,
	picture BLOB,
	car_condition TEXT,
	available INT
);

CREATE TABLE employees (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	notes TEXT
);

CREATE TABLE customers(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	driver_licence_number VARCHAR(50) NOT NULL,
	full_name VARCHAR(50) NOT NULL,
	address VARCHAR(50),
	city VARCHAR(50),
	zip_code INT,
	notes TEXT
);

CREATE TABLE rental_orders (
	 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	 employee_id INT NOT NULL,
    customer_id INT NOT NULL,
    car_id INT NOT NULL,
    car_condition TEXT,
    tank_level DOUBLE,
    kilometrage_start DOUBLE,
    kilometrage_end DOUBLE,
    total_kilometrage DOUBLE,
    start_date DATE,
    end_date DATE,
    total_days INT,
    rate_applied INT,
    tax_rate DOUBLE,
    order_status VARCHAR(50),
    notes TEXT
);


INSERT INTO categories (category, daily_rate, monthly_rate)
VALUES ('van', 10.5, 250), 
	    ('hatchback', 8.6, 115), 
		 ('sedan', 5.6, 70.4);

INSERT INTO cars (plate_number, make, model, category_id, doors, car_condition, available)
VALUES ('PK3616CA', 'Lada', 'Niva', 2, 5, 'albalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbala', 1),
		 ('PK3016AC', 'Ford', 'Escort', 1, 5, 'albalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalaalbalaalbalaalbalaalbal', 0),
		 ('E1516PK', 'Alfa Romeo', '159', 2, 5, 'albalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbalaalbala', 1);

INSERT INTO employees (first_name, last_name)
VALUES ('Ivan', 'Ivanov'), 
		 ('Petar', 'Petrov'), 
		 ('Stamat', 'Stamatov');

INSERT INTO customers (driver_licence_number, full_name, city)
VALUES ('Y15625', 'Stamat Stamatov', 'Sofia'), 
		 ('S24157', 'Petar Petrov', 'Sofia'), 
		 ('P37189', cars'Tosho Toshev', 'Sofia');

INSERT INTO rental_orders (employee_id, customer_id, car_id, order_status)
VALUES (1, 2, 3, TRUE), 
		 (3, 2, 1, TRUE), 
		 (1, 1, 1, FALSE);