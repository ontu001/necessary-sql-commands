--To import csv file
copy customer(customer_id, first_name, last_name, email, address_id)
from 'E:\sql\sql-commands\resources\customer.csv'
delimiter ','
csv header;
--Frist open the csv and Create a table with the same column name as per the csv then use this command



