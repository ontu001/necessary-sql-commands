-- To drop all the table
DROP TABLE IF EXISTS project, employee, manager, department CASCADE;

-- Creating the employee table
CREATE TABLE employee (
    emp_id VARCHAR(20) PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INTEGER,
    dept_id VARCHAR(20),
    manager_id VARCHAR(20)
);

-- Inserting data into the employee table
INSERT INTO employee (emp_id, emp_name, salary, dept_id, manager_id) VALUES
('E1', 'Rahul', 15000, 'D1', 'M1'),
('E2', 'Manoj', 15000, 'D1', 'M1'),
('E3', 'James', 55000, 'D2', 'M2'),
('E4', 'Michael', 25000, 'D2', 'M2'),
('E5', 'Ali', 20000, 'D10', 'M3'),
('E6', 'Robin', 35000, 'D10', 'M3');

-- Creating the manager table
CREATE TABLE manager (
    manager_id VARCHAR(20) PRIMARY KEY,
    manager_name VARCHAR(50),
    dept_id VARCHAR(20)
);

-- Inserting data into the manager table
INSERT INTO manager (manager_id, manager_name, dept_id) VALUES
('M1', 'Prem', 'D3'),
('M2', 'Shripadh', 'D4'),
('M3', 'Nick', 'D1'),
('M4', 'Cory', 'D1');

-- Creating the department table
CREATE TABLE department (
    dept_id VARCHAR(20) PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Inserting data into the department table
INSERT INTO department (dept_id, dept_name) VALUES
('D1', 'IT'),
('D2', 'HR'),
('D3', 'Finance'),
('D4', 'Admin');

-- Creating the project table
CREATE TABLE project (
    project_id VARCHAR(20),
    project_name VARCHAR(100),
    team_member_id VARCHAR(20)
);

-- Inserting data into the project table
INSERT INTO project (project_id, project_name, team_member_id) VALUES
('P1', 'Data Migration', 'E1'),
('P1', 'Data Migration', 'E2'),
('P1', 'Data Migration', 'M3'),
('P2', 'ETL Tool', 'E1'),
('P2', 'ETL Tool', 'M4');



select * from employee;
select * from department;
select * from manager;
select * from project;



--Fetch the employee name and the department name they belong to.
--Inner Join -- It retrives the common data between 2 table

select
	e.emp_name, d.dept_name
from
	employee e
inner join
	department d on e.dept_id =d.dept_id;



--Fetch all the employee name and the department name they belong to.
--Left Join -- It retrives all the data from the left table and the common data from the right table(not matched data appears as null)


select
	e.emp_name, d.dept_name
from
	employee e
left join
	department d on e.dept_id = d.dept_id;




--Fetch all the department name and the employee name they belong to.
--Right Join -- It retrives all the data from the right table and the common data from the left table(not matched data appears as null)
select
	e.emp_name, d.dept_name
from
	employee e
right join
	department d on e.dept_id = d.dept_id;


-- Fetch details of All employee, theri manager, their department and the projects they work on.
select
	e.emp_name, m.manager_name, d.dept_name, p.project_name
from employee e
inner join manager m on m.manager_id = e.manager_id 
left join department d on  d.dept_id = e.dept_id 
left join project p on p.team_member_id = e.emp_id;