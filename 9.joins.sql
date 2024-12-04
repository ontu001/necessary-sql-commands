--To join the tables it have to be a common cololumn between the table.

--To perform inner join between two table
  --For inner join it returns only common element between the tables
select * -- To show all data after join
-- select c.first_name , p.mode, p.amount (to show specific coloumn)
from customer as c -- As(alias) c means it renames the customer_name as c
inner join payment as p
on c.customer_id = p.customer_id; --Here u can swap the table name it dosent make any change for inner join





-- To join 3 or more table
SELECT *
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column
INNER JOIN table3
ON table2.common_column = table3.common_column;





-- Left join
  -- In left join It return all data from left table and only common data from the right table

select *
from customer as c
left join payment as p
on c.customer_id = p.customer_id; -- here table order is not changeable, if change then the join will be changed




-- Right join
  -- In Right join It return all data from Right table and only common data from the left table

select *
from customer as c
right join payment as p
on c.customer_id = p.customer_id; -- here table order is not changeable, if change then the join will be changed




--Full join
  -- It'll return all the data between the joined tables
select *
from customer as c
full outer join payment as p
on c.customer_id = p.customer_id;







