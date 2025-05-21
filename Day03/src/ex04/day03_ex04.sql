WITH people AS(
	SELECT gender, pizzeria.name AS pizzeria_name
	FROM person_order AS pv
		JOIN person ON person.id = pv.person_id
		JOIN menu ON pv.menu_id = menu.id
		JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
	),
	men AS(
		SELECT p1.pizzeria_name
		FROM people p1
		WHERE p1.gender = 'male'
	),
	women AS(
		SELECT p2.pizzeria_name
		FROM people p2
		WHERE p2.gender = 'female'
	),
	only_men AS(
		SELECT * FROM men
		EXCEPT
		SELECT * FROM women
	),
	only_women AS(
		SELECT *
		FROM women
		EXCEPT
		SELECT *
		FROM men
	)
SELECT *
FROM only_men
UNION
SELECT *
FROM only_women
ORDER BY 1;
