USE soft_uni;
SELECT town_id, name FROM towns
WHERE name NOT LIKE 'R%' AND 
		name NOT LIKE 'B%' AND 
		name NOT LIKE 'D%' 		 
/* WHERE SUBSTRING(UPPER(`name`),1,1) NOT IN ('R', 'B', 'D') */
ORDER BY name ASC; 