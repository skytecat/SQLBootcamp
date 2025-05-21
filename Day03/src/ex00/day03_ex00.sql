WITH visit AS (
	SELECT pizzeria_id, visit_date 
	FROM person_visits
	WHERE person_id = (SELECT id FROM person WHERE name = 'Kate')
),

pizzas AS(
	SELECT pizza_name, price, pizzeria.name AS pizzeria_name, pizzeria_id
	FROM menu
			JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
	WHERE pizzeria_id IN(SELECT pizzeria_id FROM visit)
	)
	
SELECT pizza_name, price, pizzeria_name, visit_date
FROM pizzas 
	JOIN visit ON visit.pizzeria_id = pizzas.pizzeria_id
	JOIN pizzeria ON pizzas.pizzeria_id = pizzeria.id
WHERE price BETWEEN 800 AND 1000
ORDER BY 1,2,3,4;

