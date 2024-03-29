SELECT c.category_id, c.name
FROM category c
WHERE c.name =
(SELECT count(*) FROM film_category f
WHERE f.category_id = c.category_id);