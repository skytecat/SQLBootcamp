SELECT DISTINCT order_date AS action_date, person.name AS person_name
FROM person_order
	JOIN person_visits ON visit_date = order_date
	JOIN person ON person.id = person_order.person_id
ORDER BY action_date, person_name DESC;