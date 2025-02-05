SELECT c.name AS category, avg(extract(day FROM r.return_date - r.rental_date)) AS avg_rentaldays
FROM rental r
JOIN inventory i ON i.inventory_id=r.inventory_id
JOIN film f ON f.film_id=i.film_id
JOIN film_category fc ON fc.film_id=f.film_id
JOIN category c ON fc.category_id=c.category_id
GROUP BY c.name
ORDER BY avg_rentaldays  DESC;
