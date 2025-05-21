SELECT DISTINCT name
FROM person_order po JOIN person ON po.person_id = person.id
ORDER BY name;