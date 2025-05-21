SELECT person.name
FROM person_order AS po
	JOIN person ON person.id = po.person_id
	JOIN menu ON po.menu_id = menu.id
WHERE gender = 'male' 
	AND address IN ('Moscow', 'Samara') 
	AND pizza_name IN('mushroom pizza', 'pepperoni pizza')
ORDER BY 1 DESC;