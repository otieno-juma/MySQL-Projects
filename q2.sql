SELECT sum(CASE WHEN rating ='G' THEN 1 ELSE 0 END) g,
	sum(CASE WHEN rating = 'PG' THEN 1 ELSE 0 END) pg,
	sum(CASE WHEN rating = 'PG-13' THEN 1 ELSE 0 END) pg_13,
	sum(CASE WHEN rating = 'R' THEN 1 ELSE 0 END) r,
	sum(CASE WHEN 'NC-17' THEN 1 ELSE 0 END) n_17 
    FROM film;