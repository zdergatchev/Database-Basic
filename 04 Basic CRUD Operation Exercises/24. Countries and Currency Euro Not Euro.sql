USE geography;
SELECT country_name, country_code, 
IF(currency_code = 'EUR', 'Euro', 'Not Euro') AS currency_code
FROM countries ORDER BY country_name;