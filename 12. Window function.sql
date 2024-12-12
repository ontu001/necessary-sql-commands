-- For the full Window function tutorial please read out my article on m,edium
https://medium.com/@playwithdatawithontu/what-are-sql-window-functions-1deccc47f2a9



-- To write advance query we need this window function
--We create wndow function by the help of OVER caluse
-- Aggregate functions provide only single output based on all the row calculaation
-- But in window function we can get seperate calculation result based on each row

--There are 3 types of window functions
--Aggregate (sum,max,min..)
--Ranking functions
--Analytics functions


--normal aggregate function a amra jodi sum ber korte cai taile total colum er upor calculation kore output dibe kintu amra jodi cai same row gulo k group kore sudhu segulo sum ber korte hobe tokhon window function use kora hoi
-- Aggregate Window function example function
--sum, avg,count,max,min
select * ,
sum(new_id) over(partition by new_cat order by new_cat) as "total",
round(avg(new_id) over(partition by new_cat order by new_cat),2) as "average",
count(new_id) over(partition by new_cat order by new_cat) as "Count",
min(new_id) over(partition by new_cat order by new_cat) as "Min",
max(new_id) over(partition by new_cat order by new_cat) as "Max"

from test_data


-- to get the same sum date for all rows
select * ,
sum(new_id) over(order by new_cat rows between unbounded preceding and unbounded following ) as "total"

from test_data




--Window fnction using rank function
--row_number, rank, dense_rank, percent_rank
select * ,
--u can use partition with the rank function as well
--row_number() over(partition by new_cat order by new_id)as "row_number",
row_number() over(order by new_id)as "row_number",
--it will just return the rank number based on the value


rank() over( order by new_id)as "rank",
--It will return then rank number by skipping the duplicate rank 


dense_rank() over( order by new_id)as "dense_rank",
--It will return then rank number without skipping the duplicate rank 


ROUND(CAST(PERCENT_RANK() OVER (ORDER BY new_id) AS numeric), 3) AS "percent_rank"
--it returns percentage of the rabnk number based on the value
--here I use CAST for limit the digit after float and its applicable for postgreesql
from test_data






--Analytic function
--first_value, last_value, lead,lag
select * ,

first_value(new_id) over(order by new_id)as "first",
--it will return the fist value of the new_id row



last_value(new_id) over( order by new_id rows between unbounded preceding and unbounded following)as "last",
--it will return the last value of the new_id row
--#without rows caluse it will not return the last value, it will just copy and paste the new_id coloumn




lead(new_id) over( order by new_id)as "lead",
--It alwasy ignore the previous value and move/lead to the next value and at the last value it will give null becasue it can't find ny next value for the last term


lag(new_id) over( order by new_id)as "lag"
--it is just the opposite of lead, it ignore the next value and follow the previous value
from test_data








