SELECT c.first_name, c.last_name, amount
FROM customer c
RIGHT OUTER JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY first_name, last_name, amount;

