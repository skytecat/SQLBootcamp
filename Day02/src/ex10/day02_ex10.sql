WITH cr AS(SELECT p.name AS person_name1, p2.name AS person_name2, p.address AS common_address, p.id AS id1, p2.id AS id2
FROM person p CROSS JOIN person p2
WHERE NOT p.name = p2.name
	AND p.address = p2.address
ORDER BY 1,2,3
		  )
SELECT person_name1, person_name2, common_address
FROM cr
WHERE id1 > id2;