USE soft_uni;
SELECT first_name, last_name FROM employees
WHERE SUBSTRING(first_name, 1, 2) = "SA"; 
/* WHERE first_name LIKE 'SA%'; */
