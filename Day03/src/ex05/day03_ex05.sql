WITH vis AS(
	SELECT pizzeria.name AS pizzeria_name
	FROM person_visits AS pv
		JOIN person ON pv.person_id = person.id
		JOIN pizzeria ON pv.pizzeria_id = pizzeria.id
	WHERE person.name = 'Andrey'
	),

ord AS(
	SELECT pz.name AS pizzeria_name
	FROM person_order po
		JOIN menu ON po.menu_id = menu.id
		JOIN pizzeria pz ON pz.id = menu.pizzeria_id
	WHERE person_id = (SELECT id FROM person WHERE name = 'Andrey')
	)

SELECT *
FROM vis
EXCEPT
SELECT *
FROM ord
ORDER BY 1;



