SELECT menu.pizza_name, pizzeria.name
FROM person_order AS po
	JOIN person ON po.person_id = person.id
	JOIN menu ON po.menu_id = menu.id
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE person.name IN('Denis','Anna')
ORDER BY 1,2;
