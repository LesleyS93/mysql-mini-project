CREATE DATABASE cloud_lab;

USE cloud_lab;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (firstname, lastname,department,salary)
VALUES
('Lesley','Springbok','Cloud Engineering',25000.00),
('John','Smith','IT Support',32000.00),
('Sarah','Jones','Networking',45000.00),
('Michael','Brown','DevOps',60000.00),
('Lisa','Taylor','Cyber Security',55000.00);
