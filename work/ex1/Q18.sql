SELECT ct.country AS country,count(cu.customer_id),sum(p.amount) AS total_sales
FROM rental r
JOIN customer cu ON r.customer_id=cu.customer_id
JOIN address a ON cu.address_id=a.address_id
JOIN city ci ON a.city_id=ci.city_id
JOIN country ct ON ci.country_id=ct.country_id
JOIN payment p ON r.rental_id=p.rental_id
GROUP BY ct.country
ORDER BY total_sales  DESC;
