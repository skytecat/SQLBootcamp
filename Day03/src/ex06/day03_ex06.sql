WITH main AS(
	SELECT pizza_name, pz.name AS pizzeria_name, price, pz.id
	FROM menu
		JOIN pizzeria pz ON pz.id = menu.pizzeria_id
	),
	main_cp AS(
		SELECT * FROM main
	)
	
SELECT main.pizza_name, main.pizzeria_name AS pizzeria_name_1, main_cp.pizzeria_name AS pizzeria_name_2, main.price
FROM main
	JOIN main_cp ON main.price = main_cp.price 
		AND main.pizza_name = main_cp.pizza_name
		AND NOT main.pizzeria_name = main_cp.pizzeria_name
		AND main.id > main_cp.id
ORDER BY 1;



