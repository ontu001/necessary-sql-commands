-- To make the string upper lower and find out the length of column's data
select  length(first_name) , upper(last_name) , lower(first_name)from customer



-- To querry specific length of caharter between a range
select  substring(first_name, 1,3) , first_name from customer



-- To concat/merge multiple columns string
select  CONCAT(first_name, last_name) , first_name, last_name from customer



-- To replace any string from the column
select  replace(first_name, 'Mary', 'ONTU') , first_name from customer
-- Mary is replaced with ONTU





