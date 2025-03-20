
-- Create company table
CREATE TABLE company(
company_id varchar(10) not null primary key,
company_name varchar(50) not null,
location varchar(20)
);

--Inserting data into the company table
insert into company(company_id,company_name,location)
values
('C001','rohanLLLSolution','Bangladesh');



--create family table
CREATE TABLE family (
    member_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    parent_id VARCHAR(10) REFERENCES family(member_id)
);


--insert data into family table
INSERT INTO family (member_id, name, age, parent_id) VALUES
('F1', 'David', 4, 'F5'),
('F2', 'Carol', 10, 'F5'),
('F3', 'Michael', 12, 'F5'),
('F4', 'Johnson', 36, NULL),
('F5', 'Maryam', 40, 'F6'),
('F6', 'Stewart', 70, NULL),
('F7', 'Rohan', 6, 'F4'),
('F8', 'Asha', 8, 'F4');


--Fetch all employee name and all department name
-- FULL OUTER JOIN -- It retrive all data from both table
select
	e.emp_name, d.dept_name
from
	employee e
full join department d on d.dept_id = e.dept_id;















select * from employee;
select * from department;
select * from manager;
select * from project;
select * from company;
select * from family;






-- CROSS JOIN -- EVERY RECORDS FROM LEFT TABLE WIL MATCH WTH EVERY RECORD FROM RIGHT TABLE
select
	e.emp_name, d.dept_name
from
	employee e
cross join -- it doenst need any join condition
	department d;


-- Write a query to fetch the employee name and their corresonding department name.
-- Also make sure to display the company name and the company location corresponding to each employee.
select
	e.emp_name, d.dept_name , c.company_name, c.location
from
	employee e
inner join
	department d on d.dept_id = e.dept_id
cross join
	company c; --when u don't have any common column to match with others then corss join can solve the problem




-- NATURAL JOIN -- SQL WILL AUTOMETICALLY JOIN BOTH TABL,E BASED ON SIMILAR COLUMN NAME MEANS U DON'T NEED TO SPECIFY THE JOIN CONDITION
-- The join perform based on the same column name between 2 table
select e.emp_name, d.dept_name
from employee e
natural join department d;
-- ** if any column name dosen't match with other table the it will perform cross join, so not recommended.










-- SELF JOIN -- It basically join between a single table
-- Write a query to fetch the chlid name and their age corresponding to their parent name and parent age


select
child.name child_name,
child.age child_age,
parent.name parent_name,
parent.age parent_age
from family as child
join family as parent on child.parent_id = parent.member_id;

--fetch all the child
select
child.name child_name,
child.age child_age,
parent.name parent_name,
parent.age parent_age
from family as child
left join family as parent on child.parent_id = parent.member_id;


