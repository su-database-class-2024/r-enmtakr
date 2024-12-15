SELECT country_id,count(city) AS city_count FROM city
GROUP BY country_id
HAVING count(city)>=20
ORDER BY city_count DESC;