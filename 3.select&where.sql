--To querry specific one ore more column from the whole table
select sname, semester from students --here sname and semester 2 column will be shown


--To querry unique filed from a column
select distinct semester from students --it remove the duplicate values and show only unique file



-- To filter specific data from the table
select sname, semester from students
where semester = 'Autumn'
--It will show only those name whose semester is Autumn aditionally I want to see the semester also



-- To use multiple operator(check the resources file to explore more operators)
select sname, semester from students
where semester = 'Autumn' and creidt_hour < 3


-- To sort the data (use a column name for order reference)
order by sname  desc --asc for acending


-- To ask how many row u want to see(set the limit)
limit 2


