--To map data between same table 
--Sel join
select t1.empname as employeee , t2.empname as manager
from employee as t1
join employee as t2
on t2.empid = t1.manager_id






--Union
  -- to combine/concatenater 2 or more table and keeps only the unique records
select colomun_name
from table_name1
union 
select colomun_name
from table_name2


--*NB: to union/union all the table m=have to be same structured like same amount of colomun and data filed


--Union All
  -- to combine/concatenater 2 or more table and keeps all record including duplicates
select colomun_name
from table_name1
union all
select colomun_name
from table_name2