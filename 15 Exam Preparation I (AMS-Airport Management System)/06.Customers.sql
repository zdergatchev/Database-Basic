SELECT customer_id, CONCAT(first_name, ' ', last_name) AS `full_name`, gender 
FROM customers AS c
ORDER BY `full_name` , c.customer_id ASC;