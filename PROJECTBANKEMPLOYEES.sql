--CREAMOS LA BASE DE DATOS
--CREATE DATABASE ProjectOne
USE ProjectOne
DROP TABLE BankEmployees
/*
CREAMOS LAS TABLAS A TRABAJAR (EMPLEADOS Y SUS DATOS)*/
Create Table BankEmployees
(Employee_ID int,
 Department varchar(50),
 Job_Title varchar(50),
 Hiring_Date DATE,
 Salary int)

Create Table EmployeeData
(Employee_ID int,
 FirstName varchar(50),
 LastName varchar(50),
 Email nvarchar(150),
 Age int,
 Gender varchar(50)
 )


--INSERTAMOS VALORES A LAS TABLAS
 insert into BankEmployees values
 (1000, 'Business intelligence', 'Data Analyst', '2021-05-12', 7000),
 (1001, 'Risk Management', 'Risk Analyst', '2021-06-15', 7200),
 (1002, 'Marketing', 'Digital Marketing Specialist', '2021-04-20', 6800),
 (1003, 'Finance', 'Financial Manager', '2019-03-10', 12000),
 (1004, 'Finance', 'Financial Analyst', '2020-10-03', 7000),
 (1005, 'RRHH', 'Staff Administration', '2019-10-03', 8500),
 (1006, 'Business intelligence', 'BI Developer', '2021-08-18', 7800),
 (1007, 'Risk Management', 'Credit Risk Officer', '2021-07-25', 7100),  
 (1008, 'Marketing', 'Digital Marketing Specialist', '2021-09-05', 6900),   
 (1009, 'Finance', 'Investment Analyst', '2020-12-02', 7300),   
 (1010, 'Finance', 'Financial Controller', '2019-11-15', 11500),   
 (1011, 'RRHH', 'Recruitment Specialist', '2020-03-20', 8000),
 (1012, 'Operations', 'Operations Manager', '2018-06-10', 10500),   
 (1013, 'Customer Service', 'Customer Relationship Manager', '2020-02-28', 9200),   
 (1014, 'Compliance', 'Compliance Officer', '2019-07-12', 9500),   
 (1015, 'IT', 'IT Support Analyst', '2021-01-08', 6700),
 (1016, 'IT', 'Systems Analyst', '2021-07-20', 7800),
 (1017, 'Customer Service', 'Customer Support Specialist', '2021-09-10', 7200),   
 (1018, 'Business Intelligence', 'BI Consultant', '2021-08-05', 8500),   
 (1019, 'Finance', 'Investment Analyst', '2020-12-03', 7300),
 (1020, 'Customer Service', 'Call Center Representative', '2021-10-15', 6900);
 
 Insert into EmployeeData values
 (1000, 'Brian', 'Johnson', 'bjohnson@gmail.com', 28, 'Male'),
 (1001, 'Alice', 'Smith', 'asmith@gmail.com', 32, 'Female'),
 (1002, 'David', 'Brown', 'dbrown@gmail.com', 25, 'Male'),   
 (1003, 'Emily', 'Clark', 'eclark@gmail.com', 29, 'Female'),   
 (1004, 'George', 'Davis', 'gdavis@gmail.com', 40, 'Male'),   
 (1005, 'Isabella', 'Evans', 'ievans@gmail.com', 22, 'Female'),   
 (1006, 'James', 'Ford', 'jford@gmail.com', 35, 'Male'),   
 (1007, 'Lily', 'Garcia', 'lgarcia@gmail.com', 27, 'Female'),   
 (1008, 'Michael', 'Harris', 'mharris@gmail.com', 38, 'Male'),   
 (1009, 'Olivia', 'Jackson', 'ojackson@gmail.com', 31, 'Female'),   
 (1010, 'William', 'King', 'wking@gmail.com', 33, 'Male'),
 (1011, 'Sophia', 'Lee', 'slee@gmail.com', 28, 'Female'),
 (1012, 'Daniel', 'Miller', 'dmiller@gmail.com', 35, 'Male'),   
 (1013, 'Ava', 'Moore', 'amoore@gmail.com', 24, 'Female'),   
 (1014, 'Alexander', 'Hall', 'ahall@gmail.com', 30, 'Male'),   
 (1015, 'Mia', 'Wright', 'mwright@gmail.com', 26, 'Female'),   
 (1016, 'Ethan', 'Young', 'eyoung@gmail.com', 33, 'Male'),   
 (1017, 'Scarlett', 'Harris', 'sharris@gmail.com', 29, 'Female'),   
 (1018, 'Benjamin', 'Martin', 'bmartin@gmail.com', 37, 'Male'),   
 (1019, 'Luna', 'Lewis', 'llewis@gmail.com', 23, 'Female'),   
 (1020, 'William', 'Turner', 'wturner@gmail.com', 31, 'Male');  


 --select * FROM EmployeeData
 select * from BankEmployees


 --AGREWGAMOS UNA COLUMNA DEL RENDIMIENTO MENSUAL DE EMPLEADOS EN UNA TABLA (MEDIDOS DEL 1 AL 10)
 --ALTER TABLE BankEmployees
 --ADD Performance int;
 --TABLE BankEmployees
 --DROP COLUMN Performance;

--UPDATE BankEmployees
--SET Performance = 7
--WHERE Employee_ID = 1020
select * from EmployeeData

SELECT * FROM BankEmployees

CREATE VIEW VISTA1 AS
SELECT ED.Employee_ID, FirstName, LastName, Job_Title, Salary
FROM EmployeeData AS ED 
JOIN
BankEmployees AS BE
ON ED.Employee_ID = BE.Employee_ID;

SELECT * FROM VISTA1