/*primary key,unique key And Auto increment */

/* 1.primary key-It is used to show the each record uniquelly
create table employee(
id int PRIMARY KEY,
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age int NOT NULL,
city varchar(20)
);
/* we can create the primary by this method also.
create table employee(
id int,
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age int NOT NULL,
city varchar(20),
PRIMARY KEY(id)
);

/*2.AUTO_INCREMENT-This will increase the key automatically 
create table employee(
id int PRIMARY KEY AUTO_INCREMENT,
firstname varchar(20) NOT NULL,
middlename varchar(20),
lastname varchar(20) NOT NULL,
age int NOT NULL,
city varchar(20)
);

/*UNIQUE KEY-main purpose of this key is remove the duplicates

//we can use for method to define the unique key constraint
create table employee(
id int UNIQUE KEY,
firstname varchar(20),
lastname varchar(20),
age int NOT NULL,
city varchar(20)
);

create table employee(
firstname varchar(20),
lastname varchar(20),
age int NOT NULL,
city varchar(20),
UNIQUE KEY(firstname,lastname)
);
