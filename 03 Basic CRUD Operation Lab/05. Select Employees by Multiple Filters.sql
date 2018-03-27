USE hospital;
CREATE VIEW `v_high_paid_in_dep_4` AS
SELECT * FROM employees AS e WHERE e.department_id = 4 AND e.salary >= 1600
ORDER BY id;
SELECT * FROM v_high_paid_in_dep_4;