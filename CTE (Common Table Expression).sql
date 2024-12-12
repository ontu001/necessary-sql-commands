--When u query something and get new table , that table is very temporary,, if we remove the query then the table also remoed we can't use the result with other query
-- Using cte we can temporarily save any query and it's result and can reasue the result

-- When to Use CTEs:
-- Simplifying nested queries.
-- Organizing complex query logic.
-- Improving code readability.
-- Implementing recursion for hierarchical data.


-- Key Features:
-- Temporary Scope: CTEs exist only during the execution of the query.
-- Readable: Makes large queries more understandable by isolating logical sections.
-- Reusable: You can reference a CTE multiple times in the main query.



--Here I join two table and find average and count using window function and store all the reult in my_cte
--at the end I just perform regular query to extract my previous result or I can reuse the result ass well
WITH my_cte AS (
    SELECT *,
        ROUND(AVG(amount) OVER (ORDER BY p.customer_id), 2) AS Average_price,
        COUNT(address_id) OVER (ORDER BY c.customer_id) AS count
    FROM payment AS p
    INNER JOIN customer AS c
    ON p.customer_id = c.customer_id
)
SELECT count, Average_price
FROM my_cte;



--We can also write multiple cte using one WITH function like
WITH my_cte AS (
    SELECT *,
        ROUND(AVG(amount) OVER (ORDER BY p.customer_id), 2) AS Average_price,
        COUNT(address_id) OVER (ORDER BY c.customer_id) AS count
    FROM payment AS p
    INNER JOIN customer AS c
    ON p.customer_id = c.customer_id
),
new_cte AS (
    SELECT *,
        MAX(amount) OVER (ORDER BY customer_id) AS max_amount,
        MIN(amount) OVER (ORDER BY customer_id) AS min_amount
    FROM payment
)
SELECT count, Average_price, pp.max_amount, pp.min_amount
FROM new_cte as pp, my_cte;
