--Def: (To make the query dynamic) It's a inner query or nested query allow us to create complex query.


--Find the details of the customers, whose payment amount is more than the average of total amount paid by all customers?
--find the avegrage value then comapre with all customer and sort out the filtered customer
select * from payment
where amount> (select avg(amount) from payment) --sub query inside the bracket
order by amount asc -- I just order the output



--Perform inner join between paymnt and customer tabl based on customer_id using sub query
-- where the payment amount is greater than th average
-- here it will extract only common data between 2 table based on customer_id coloumn
select customer_id, amount, mode
from payment
where customer_id in (select customer_id from customer)
and amount> (select avg(amount) from payment)


--Perfrm join between payment and customer table using sub query's exists function
--Here the output will be the 1st and the last name whoose payment amount is > 50 and it will show only those row which are common between customer_id common between 2 table

select first_name , last_name
from customer c  
where exists (select customer_id, amount
				from payment p
				where p.customer_id = c.customer_id
				and amount > 50
)


