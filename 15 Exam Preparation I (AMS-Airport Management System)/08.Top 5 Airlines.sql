SELECT a.airline_id, a.airline_name, a.nationality, a.rating
FROM airlines AS a
WHERE (SELECT COUNT(flight_id) 
FROM flights AS f WHERE f.airline_id = a.airline_id) > 0
ORDER BY a.rating DESC, a.airline_id ASC
LIMIT 5;


