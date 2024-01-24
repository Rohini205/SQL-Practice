#Use the Schema
use crud;

#Drop the table
drop table student;

#Create the table student
create table student(
student_id int primary Key,
selected_course varchar(20),
student_fname varchar(20) Not null,
Student_lname varchar(20) not null,
company_name varchar(20) not null,
source_name varchar(20) not null,
location varchar(20) Not null default 'Bengalore',
year_of_experience int,
batchJoinig date);

#Inserting records into student table
insert into student values(1, 'Java','Jivan','patil','atos','LinkedIn','Pune',1,"2022-07-11");
insert into student values(2, 'Python','Jaya','Ghotane','Infosys','Indeed','Bengalore',3,"2021-05-22");
insert into student values(3, 'ServiceNow','Rohini','patil','Syntel','Naukri','Mumbai',2,"2022-07-21");
insert into student values(4, 'ServiceNow','Rohini','Tibile','Syntel','Naukri','Pune',2,"2022-07-21");

#Without distinct keyword
select location from student;

#Use of Distinct Keyword -to find the distinct records
select distinct location from student;
select distinct source_name from student;

#Use order by-To sort the data in order we are using this clause
select * from student order by year_of_experience;
select student_fname,student_lname, company_name from student order by student_fname;
select student_fname,year_of_experience from student order by year_of_experience;
select student_fname,year_of_experience from student order by year_of_experience desc;
select student_fname,year_of_experience from student order by 1 desc; # 1 is the column
select student_fname,year_of_experience,company_name from student order by year_of_experience,student_fname,student_lname; 

#Use of Limit keyword-Limit is used with order by in order to get the proper result
select student_fname,student_lname,year_of_experience from student order by year_of_experience limit 3;

#want to know last 2 candiddate from which source enrollered
Select source_name from student order by batchJoinig desc limit 2;

#This query wan't work
Select distinct source_name from student order by batchJoinig desc limit 2;

Select student_fname, source_name from student order by batchJoinig desc limit 1,2; # 0 is the index from where it is start

#Like Keyword-It will not give the exact match that time we are going with the like that is fuzy match
# (%) is wild card character indicating it can be anything
 Select student_fname, source_name from student  where student_fname LIKE '%R%';
 
 #This will give the exact 6 charachter student name and (_) is also wild character
 Select student_fanme, source_name from student  where student_fname like '______;'