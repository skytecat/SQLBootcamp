WITH pizza AS(SELECT pizza_name, pizzeria.name AS pizzeria_name, price
	FROM menu
	JOIN pizzeria ON pizzeria_id = pizzeria.id)
SELECT *
FROM pizza
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;