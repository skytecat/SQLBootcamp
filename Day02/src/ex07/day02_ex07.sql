WITH visits AS (SELECT pizzeria.name
FROM person_visits 
	JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id				
WHERE visit_date = '2022-01-08' AND person_id = (SELECT id FROM person WHERE name = 'Dmitriy')
 ),
pizzas AS (
SELECT pizzeria.name
FROM menu
	JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE price < 800
)

SELECT *
FROM pizzas
INTERSECT 
SELECT *
FROM visits;