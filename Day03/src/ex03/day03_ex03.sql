WITH people AS(
	SELECT gender, p.name AS pizzeria_name
	FROM person_visits AS pv
		JOIN person ON person.id = pv.person_id
		JOIN pizzeria AS p ON p.id = pv.pizzeria_id
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
		EXCEPT ALL
		SELECT * FROM women
	),
	only_women AS(
		SELECT *
		FROM women
		EXCEPT ALL
		SELECT *
		FROM men
	)
SELECT *
FROM only_women
UNION ALL
SELECT *
FROM only_men
ORDER BY 1;
