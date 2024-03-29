SELECT name,
	CASE
		WHEN name IN ( 'English', 'italian', 'French', 'German')
			THEN 'latin1'
		WHEN name IN ( 'Japanese', 'Mandarin') 
			THEN 'utf8'
		ELSE 'UNKNOWN'
	END AS character_set
FROM   language;