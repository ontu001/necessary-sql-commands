--To group rows that has the same value(ofter used with aggregated functions)
--Here I want to see total amount for each payment mode/ metchold. EX: in cash customer total pay xyz amount
select mode, sum(amount) as total_amount -- total_amount is the new varriable where I want to put the sum value
from payment
group by mode
order by  total_amount asc -- Sort the column based on total amount 




-- *NB: For SELECT statement we used WHERE clause and for GROUP BY statement we used HAVING caluse


--To apply a filter/condition  on_the_result_of/with group by statement(user having after group by *not before)
--It will filter the total_amount whis is between 101 to 399
select mode, sum(amount) as total_amount 
from payment
group by mode
having sum(amount)>100 and sum(amount)<400 --Here I just add an extra condition
order by  total_amount asc -- Sort the column based on total amount 



--Ex: Order of execution in sql (FROM > WHERE > GROUP BY > HAVING > SELECT > DISTINCT > ORDER BY > LIMIT)