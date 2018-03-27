CREATE DATABASE hotel;
USE hotel;

CREATE TABLE employees (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	title VARCHAR(50),
	notes TEXT
);

CREATE TABLE customers (
	account_number VARCHAR(50) PRIMARY KEY NOT NULL,	
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone_number VARCHAR(50),
	emergency_name VARCHAR(50),
	emergency_number VARCHAR(50),
	notes TEXT
);

CREATE TABLE room_status (
    room_status VARCHAR(50) PRIMARY KEY NOT NULL,
    notes TEXT    
);

CREATE TABLE room_types (
    room_type VARCHAR(50) PRIMARY KEY NOT NULL,
    notes TEXT    
);

CREATE TABLE bed_types (
    bed_type VARCHAR(50) PRIMARY KEY NOT NULL,
    notes TEXT    
);

CREATE TABLE rooms (
    room_number INT PRIMARY KEY NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    bed_type VARCHAR(50) NOT NULL,
    rate DOUBLE,
    room_status VARCHAR(50) NOT NULL,
    notes TEXT    
);

CREATE TABLE payments (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    account_number BIGINT NOT NULL,
    first_date_occupied DATETIME,
    last_date_occupied DATETIME,
    total_days INT,
    amount_charged DOUBLE NOT NULL,
    tax_rate DOUBLE,
    tax_amount DOUBLE,
    payment_total DOUBLE NOT NULL,
    notes TEXT   
);

CREATE TABLE occupancies (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    employee_id INT NOT NULL,
    date_occupied DATETIME,
    account_number BIGINT NOT NULL,
    room_number INT NOT NULL,
    rate_applied DOUBLE,
    phone_charge DOUBLE,
    notes TEXT    
);

INSERT INTO employees (first_name, last_name)
VALUES ('Valia', 'Ivanova'), 
		 ('Anna', 'Kurnikova'), 
		 ('Ginka', 'Gichkova');

INSERT INTO customers (account_number, first_name, last_name, phone_number)
VALUES ('5716231527', 'Ivan', 'Ivanov', '0888787878'), 
		 ('7208156152', 'Petar', 'Petrov', '0887123456'),
		 ('1234572988', 'Stamat', 'Stamatov', '0883234981');

INSERT INTO room_status (room_status)
VALUES ('free'), 
		 ('reserved'), 
		 ('occupied');

INSERT INTO room_types (room_type)
VALUES ('Studio'), 
		 ('Single'), 
		 ('Double room');

INSERT INTO bed_types (bed_type)
VALUES ('Bunk-beds'), 
		 ('Single'), 
		 ('Double');

INSERT INTO rooms (room_number, room_type, bed_type, room_status)
VALUES (5, 'Studio room', 'Bunk-beds', 'free'), 
		 (10, 'Single room', 'Single', 'free'), 
		 (15, 'Double room', 'Double', 'reserved');

INSERT INTO payments (employee_id, payment_date, account_number, amount_charged, payment_total)
VALUES (1, '2000-01-03 10:05:05', '5716231527', 78.52, 80.56),
		 (2, '2000-02-03 11:11:01', '7208156152', 49.21, 55.20),
		 (3, '2000-03-06 11:50:10', '1234572988', 300.51, 387.36);

INSERT INTO occupancies (employee_id, account_number, room_number)
VALUES (1, '5716231527', 5), 
		 (2, '7208156152', 10), 
		 (3, '1234572988', 15);