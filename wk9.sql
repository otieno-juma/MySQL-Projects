SELECT   DISTINCT
         f.film_id left_id
,        i.film_id right_id
,        f.title
FROM     film f NATURAL JOIN inventory i
ORDER BY 1;