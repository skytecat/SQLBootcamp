SELECT pizza_name, price, p.name AS pizzeria_name
FROM menu
	JOIN pizzeria AS p ON p.id = menu.pizzeria_id
EXCEPT	
SELECT pizza_name, price, p.name AS pizzeria_name
FROM person_order AS po
	JOIN menu ON menu.id = po.menu_id
	JOIN pizzeria AS p ON p.id = menu.pizzeria_id
ORDER BY 1,2;