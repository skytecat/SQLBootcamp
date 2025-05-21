WITH pep AS (SELECT person.name
FROM person_order AS po
	JOIN person ON person.id = po.person_id
	JOIN menu ON po.menu_id = menu.id
WHERE gender = 'female' 
AND pizza_name = 'pepperoni pizza'
),
ch AS (SELECT person.name
FROM person_order AS po
	JOIN person ON person.id = po.person_id
	JOIN menu ON po.menu_id = menu.id
WHERE gender = 'female' 
AND pizza_name = 'cheese pizza'
)

SELECT * FROM pep
INTERSECT
SELECT * FROM ch
ORDER BY 1;