USE soft_uni;
SELECT town_id, name FROM towns
WHERE name LIKE 'M%' OR 
		name LIKE 'K%' OR 
		name LIKE 'B%' OR 
		name LIKE 'E%' 
/* WHERE SUBSTRING(UPPER(`name`),1,1) IN ('M', 'K', 'B', 'E') */
ORDER BY name ASC; 