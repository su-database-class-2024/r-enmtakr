SELECT c.name AS category,count(r.rental_date) AS count,sum(p.amount) AS sales
FROM rental r
JOIN inventory i ON i.inventory_id=r.inventory_id
JOIN film f ON f.film_id=i.film_id
JOIN film_category fc ON fc.film_id=f.film_id
JOIN category c ON fc.category_id=c.category_id
JOIN payment p ON p.rental_id=r.rental_id
GROUP BY c.name
ORDER BY sales  DESC;
