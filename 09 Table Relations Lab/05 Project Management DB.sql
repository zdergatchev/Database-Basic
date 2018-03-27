CREATE DATABASE project_menagement_DB;
USE project_menagement_DB;

CREATE TABLE employees(
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  project_id INT
);

CREATE TABLE projects(
  id INT PRIMARY KEY AUTO_INCREMENT,
  client_id INT,
  project_lead_id INT  
);

CREATE TABLE clients(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  client_name VARCHAR(100),
  project_id INT
);

ALTER TABLE clients
ADD CONSTRAINT fk_client_project_id 
FOREIGN KEY(project_id) REFERENCES projects(id);
  
ALTER TABLE projects
ADD CONSTRAINT fk_project_id FOREIGN KEY(project_lead_id)
REFERENCES employees(id),
ADD CONSTRAINT fk_clients_id FOREIGN KEY(client_id)
REFERENCES clients(id) ;
  
ALTER TABLE employees
ADD CONSTRAINT fk_project_employees_id FOREIGN KEY(project_id)
REFERENCES projects(id);

