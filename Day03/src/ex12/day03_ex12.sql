INSERT INTO person_order(id, person_id, menu_id, order_date)
SELECT * FROM
(SELECT GENERATE_SERIES((SELECT MAX(id) + 1 FROM person_order),
					  (SELECT MAX(id) FROM person_order) + (SELECT MAX(id) FROM person)) AS id
					  ,GENERATE_SERIES(1,(SELECT MAX(id) FROM person)) AS person_id
					  ,(SELECT id FROM menu WHERE pizza_name = 'greek pizza') AS menu_id
					  ,DATE'2022-02-25' AS order_date) AS new_orders;


