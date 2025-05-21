SELECT person.name, pizza_name, price, ROUND(price * (100-discount)/100) AS discount_price, p.name AS pizzeria_name  
FROM person_order po 
	JOIN person ON person.id = po.person_id
	JOIN menu ON menu.id = po.menu_id
	JOIN person_discounts pd ON po.person_id = pd.person_id AND menu.pizzeria_id = pd.pizzeria_id
	JOIN pizzeria p ON p.id = pd.pizzeria_id
ORDER BY 1,2;