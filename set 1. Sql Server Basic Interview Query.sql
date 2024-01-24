create schema user;

use user;

#SQL Server Basic Interview Query
#Create table Employee
create table Employee(
EmployeeID int primary key auto_increment,
FirstName varchar(20) not null,
Lastname varchar(20) not null,
salary int,
JoinDate datetime,
Department varchar(20),
Gender varchar(10));

#Insert the value into employee table
insert into employee values(1,'vikas', 'Ahlawat',60000.00,'2013-02-15 11:16:28.290','IT','male');
insert into employee values(2,'nikita', 'Jain',53000.00,'2014-01-09 17:31:07.793','HR','Female');
insert into employee values(3,'Ashish', 'Kumar',100000.00,'2014-01-09 10:05:07.793','IT','male');
insert into employee values(4,'Nikhil', 'Sharma',480000.00,'2014-01-09 09:00:07.793','HR','male');
insert into employee values(5,'Anish', 'kadian',50000.00,'2014-01-09 09:31:07.793','Payroll','male');

#1.Write a query to get all Employee details from Employee table
select*from employee;

#2.Write a query to get only firstname of the employee
select FirstName from employee;

#3.Write a query to get firstname of employee in the upperCase letter
select upper(Firstname) from employee;

#4.Write a query to get firstname of employee in the LowerCase letter
Select lower(FirstName) from employee;

#5.Write a query for combine firstName and LastName and display it as "Name"(also include white space between first name and last name)
select  concat(FirstName,' ',LastName) As Name from employee;

#6.Select the employee details whose name is 'vikas'
select*from employee where firstname='vikas';

#7.Select the employee details from employee whose firstname start with letter 'a'
Select * from employee where firstname like 'a%';

#8.Get all the employee details from employee table whose 'firstName' contains 'k'
select * from employee where firstname like '%k%';

#9.Get all employee details from employee table whose firststname ends with 'h'
select* from employee where FirstName like '%h';

#10.Get all employee details from employee table whose firstName start with any single character between 'a-p'
select* from employee where FirstName like '[a-p]%';
