INSERT INTO person_visits
VALUES(
	(SELECT MAX(id)+1 FROM person_visits pv),
	(SELECT id FROM person WHERE name = 'Dmitriy'),
	(
	SELECT pizzeria.id FROM menu
		JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
		WHERE price < 800
		EXCEPT
		SELECT pizzeria.id FROM mv_dmitriy_visits_and_eats mv
			JOIN pizzeria ON mv.pizzeria_name = pizzeria.name
		LIMIT 1
	), '2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * FROM person_visits;
