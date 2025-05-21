SELECT COALESCE(person.name, '-') AS person_name, period.visit_date,COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM person 
	FULL JOIN (
	SELECT person_id, pizzeria_id, visit_date
	FROM person_visits
	WHERE visit_date = '2022-01-01' OR visit_date = '2022-01-02' OR visit_date = '2022-01-03') period ON person.id = period.person_id
	FULL JOIN pizzeria ON period.pizzeria_id = pizzeria.id
ORDER BY 1,2,3;