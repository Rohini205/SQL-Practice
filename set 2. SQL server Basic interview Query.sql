use User;
#11.Get all employee details from employee table whose "Firstname" not start with any single character between 'a-p'
Select * from employee where FirstName like '[^a-p]%';

#12.Get all employee details from employee table whose "Gender" end with 'le' and contain 4 letters. the underscore(_) wildcard character represents any single charcter
select * from employee where Gender like '--le';

#13. Get all employee details from Employee table whose 'FirstName' start with 'A' and contains 5 letters. 
select * from employee where FirstName like 'A____';

#14.Get all employee details from employee table whose 'firstname' containing '%'. Ex-'%[%]%;
select * from employee where FirstName like '%[%]%';

#15.Get all unique 'Department' from table
Select distinct Department from employee;

#16.Get the highhest salary from employee
select max(salary) from employee;

#17.Get lowest salary from the employee table
select min(salary) from employee;
