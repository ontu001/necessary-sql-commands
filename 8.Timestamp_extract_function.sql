--Some time stamp function
show timezone --current time  zone of ur sql server
select now()
select timeofday()
select current_time
select current_date



--To extract specific value from a column
--Here I extract only year from payment_date and save it to pay_year varriable
select extract (year from payment_date) as pay_year, payment_date
from payment


--Here I find Day of Week(dow) from the payment _date it will return numeric value 
--The day start from sunday which is 0
select extract (dow from payment_date) as pay_dow, payment_date
from payment

--*Check out more extract function from resources file