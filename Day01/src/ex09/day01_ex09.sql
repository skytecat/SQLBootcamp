SELECT name
FROM pizzeria
WHERE id NOT IN(
	SELECT DISTINCT pizzeria_id
	FROM person_visits
);

SELECT name
FROM pizzeria
WHERE NOT EXISTS(
	SELECT pizzeria_id
	FROM person_visits
	WHERE pizzeria.id = person_visits.pizzeria_id
);
