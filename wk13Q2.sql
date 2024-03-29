CREATE VIEW country_payments
AS
SELECT  c.country,
	(SELECT sum(p.amount)
	FROM city ct
	INNER JOIN addresss a
	ON ct.city = a.city_id
	INNER JOIN customer cst
	ON a.address_id = cst.address_id
	INNER JOIN payment p
	ON cst.customer_id = p.customer_id
WHERE ct.country_id = c.country_id
) tot_payments
FROM country c