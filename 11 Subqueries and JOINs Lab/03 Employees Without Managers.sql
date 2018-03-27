USE `soft_uni`;

SELECT employee_id, first_name, last_name, department_id, salary
FROM employees AS e
WHERE e.manager_id IS NULL;

/* SELECT e.employee_id, e.first_name, e.last_name, 
e.department_id, e.salary, d.name, d.manager_id, 
CONCAT(e1.first_name, " ", e1.last_name) AS 'manager_full_name'
FROM employees AS e 
LEFT JOIN departments AS d ON e.department_id = d.department_id
JOIN employees AS e1 ON d.manager_id = e1.employee_id
WHERE e.manager_id IS NULL; */



