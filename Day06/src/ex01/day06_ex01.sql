WITH disc AS(
SELECT person_id, pizzeria_id, COUNT(po.id),
CASE
	WHEN COUNT(po.id) = 1 THEN 10.5
	WHEN COUNT(po.id) = 2 THEN 22
	ELSE 30
END AS discount
FROM person_order po JOIN menu ON menu.id = po.menu_id
GROUP BY 1,2
	)

INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER () OVER () AS id, person_id, pizzeria_id, discount
FROM disc;
