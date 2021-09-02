DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

use employees_db;

create table department(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

create table role(
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT, 
    FOREIGN KEY (department_id) REFERENCES department(id)
);

create table employee(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
	FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (name)
VALUES 
("Executives"), 
("Legal"), 
("Engineering"), 
("Marketing"), 
("Accounting"), 
("Sales");

INSERT INTO role (title, salary, department_id)
VALUES 
("CEO", 1000000, 1), 
("Lawyer", 700000, 2), 
("Developer", 600000, 3), 
("Ad Designer", 60000, 4), 
("Accountant", 75000, 5), 
("Salesperson", 70000, 6), 

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
("John", "Doe", 1, NULL), 
("Mike", "Chan", 2, 1), 
("Malia", "Brown", 3, 1), 
("Tom", "Allen", 4, 3), 
("Sarah", "Lourde", 5, 1), 
("Michael", "Scott", 6, 1), 
("Dwight", "Shrute", 1, 1);