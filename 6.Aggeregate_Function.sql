--To query how many rows are there
select count(*) from payment -- u can use specific (coloumn_name) insted of (*)


--To find out sum of the numeric columns data
select sum(amount) from payment




--To find out the maximum value of a nmeric colomun sum
select max(amount) from payment


--To find out the minimum value of a nmeric colomun sum
select min(amount) from payment


--To find out the average value of a nmeric colomun sum
select avg(amount) from payment




--To limit/control the decimal value/digit after the floating point
select round(avg(amount), 2) from payment -- here it will show only 2 digit after the avvegrage value 



--more aggeregate function in postgree(https://www.postgresql.org/docs/9.5/functions-aggregate.html)



