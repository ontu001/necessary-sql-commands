--To join the tables it have to be a common cololumn between the table.

--To perform inner join between two table
  --For inner join it returns only common element between the tables
select * -- To show all data after join
-- select c.first_name , p.mode, p.amount (to show specific coloumn)
from customer as c -- As(alias) c means it renames the customer_name as c
inner join payment as p
on c.customer_id = p.customer_id; --Here u can swap the table name it dosent make any change for inner join














