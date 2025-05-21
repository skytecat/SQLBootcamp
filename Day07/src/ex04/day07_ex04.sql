SELECT name, COUNT(pizzeria_id) AS count_of_visits
FROM person_visits JOIN person ON person_visits.person_id = person.id
GROUP BY name
HAVING COUNT(pizzeria_id) > 3;