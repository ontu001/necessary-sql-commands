-- To create a new database you can write
CREATE DATABASE testbd

--To Delete DATABASE
DROP DATABASE testbd


--To create table 
--ex1
CREATE TABLE customer
(
CustID int primary key not null, --column_name datatype constrain
CustName varchar(25) not null,
Age int not null,
city char(20),
salary numeric

);

--ex2
CREATE TABLE students
(
SID int8 PRIMARY KEY,
SNAME varchar(25) NOT NULL,
SEMESTER varchar(25),
COURSEID varchar(20),
CREDIT numeric
);

-- To show the whole table
select * from customer