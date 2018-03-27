USE soft_uni;
SELECT first_name, last_name FROM employees
WHERE LENGTH(last_name) = 5; 
/* WHERE CHAR_LENGTH(last_name) = 5;  */