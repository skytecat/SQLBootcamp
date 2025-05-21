CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
(
WITH d AS(
	SELECT po.pizzeria_id FROM person_visits po
		JOIN menu ON menu.pizzeria_id = po.pizzeria_id
	WHERE person_id = (SELECT id FROM person WHERE name = 'Dmitriy')
		AND price < 800 AND visit_date = '2022-01-08'
	)
SELECT DISTINCT pizzeria.name AS pizzeria_name
FROM d JOIN pizzeria ON pizzeria.id = d.pizzeria_id
	);

SELECT * FROM mv_dmitriy_visits_and_eats;