SELECT film_id, title
FROM film
WHERE film_id <> ALL
(SELECT category_id
FROM category
WHERE (category.name = 'Action'));