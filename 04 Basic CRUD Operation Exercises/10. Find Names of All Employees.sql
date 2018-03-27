USE soft_uni;
SELECT CONCAT(first_name,' ', middle_name,' ',last_name) AS full_name
FROM employees 
WHERE salary = 25000 || 
		salary = 14000 || 
		salary = 12500 || 
		salary = 23600;
