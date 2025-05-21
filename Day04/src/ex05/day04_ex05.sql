CREATE VIEW v_price_with_discount AS
SELECT name, pizza_name, price , ROUND(price * 0.9) AS discount_price
FROM (SELECT person.name AS name, pizza_name, price
	FROM person_order po
		JOIN menu ON menu.id = po.menu_id
		JOIN person ON person.id = po.person_id
	ORDER BY 1,2) main;

SELECT * FROM v_price_with_discount;