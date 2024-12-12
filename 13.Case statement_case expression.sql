-- Case Expression/statement is nothing but the if else statement like other language
-- Put condition then if no oneis true then write a else , with out default/else it will trhough null if conditions are not true

--*there is a littele difference between case statement and case expression




--Case statement (output wil be inthe resources file as csv)
SELECT customer_id, 
       amount,
       CASE
           WHEN amount > 70 THEN 'Expensive Product'
           WHEN amount = 60 THEN 'Moderate Product'
           ELSE 'Regular Product'
       END AS ProductStatus
FROM payment
ORDER BY amount desc;



--## So the Only difference is in regular case styatement  we use conditionalk operator 
-- and in expression we use hard value insted of dynamic condition
-- also in case expression it's need a numeric expression column after the CASE keyword


--Case expression
SELECT customer_id, 
       CASE amount
           WHEN 90 THEN 'Prime Customer'
           WHEN 80 THEN 'Plus Customer'
           ELSE 'Regular Customer'
       END AS CustomerStatus
FROM payment
ORDER BY CustomerStatus asc;

