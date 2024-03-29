CREATE VIEW film_ctgry_actor
AS
SELECT f.title,
	c.name categery_name,
    a.first_name,
    a.last_name
FROM film f
	INNER JOIN film_category fc
    ON f.film_id = fc.film_id
    INNER JOIN category c
    ON fc.category_id = c.category_id
    INNER JOIN film_actor fa
    ON fa.film_id = f.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id;
	