UPDATE tickets AS t
INNER JOIN flights AS f ON t.flight_id = f.flight_id
INNER JOIN airlines AS  a ON f.airline_id = a.airline_id
SET price = price * 1.5
WHERE a.rating = (SELECT MAX(rating) FROM airlines);