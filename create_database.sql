-- To create a new data base
CREATE DATABASE testbd

--To Delete DATABASE
DROP DATABASE testbd


--To create table 

CREATE TABLE customer
(
CustID int primary key not null, --column_name datatype constrain
CustName varchar(25) not null,
Age int not null,
city char(20),
salary numeric

);

-- To show the whole table
select * from customer