USE soft_uni;
SELECT first_name, last_name, job_title
FROM employees
WHERE salary BETWEEN 20000 AND 30000;
/*WHERE salary >= 20000 AND salary <= 30000; */		