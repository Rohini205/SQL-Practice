/*Learning CURD Operation(create,update,Read,Delete)
--create Operation 

--create schema using below command
 CREATE SCHEMA crud;
 
--Use shecma
 USE crud;
 
 --Create the table
CREATE TABLE Employee(
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
age int,
salary int,
lacation varchar(20));

--Insert operation
INSERT INTO employee(firstname,middlename,lastname,age,salary,lacation) VALUES ('Kapil','Kumar','Sharma','20',10000,'Begalore');
INSERT INTO employee(firstname,middlename,lastname,age,salary,lacation) VALUES ('Kapi\'l','Ram','Tiwar','29',20000,'Bangalore');

--Insert data into multiple rows at the same
INSERT INTO employee VALUES ('Sham','Recho','Ronald','22',15000,'Bengalore'),('Vita','Maria','gugii','30',30000,'Bangalore');

--2.Read operation
select*from employee;

--Drop table
drop table employee;

--Create table using Not null and default contraint
CREATE TABLE Employee(
firstname varchar(20) NOT NULL,
middlename varchar(20) ,
lastname varchar(20) NOT NULL,
age int,
salary int,
lacation varchar(20) NOT NULL DEFAULT 'bengalore');

--Check Schema Structure
DESC employee;