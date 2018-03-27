SELECT DISTINCT c.customer_id, 
CONCAT(c.first_name, ' ' , c.last_name) AS `full_name`,
t.town_name FROM customers AS c
	INNER JOIN towns AS t ON c.home_town_id = t.town_id
	INNER JOIN tickets AS ti ON ti.customer_id = c.customer_id
	INNER JOIN flights AS f ON ti.flight_id = f.flight_id
	INNER JOIN airports AS a ON a.airport_id = f.origin_airport_id		
WHERE f.`status` = 'Departing' AND a.town_id = c.home_town_id 
ORDER BY c.customer_id ASC;
