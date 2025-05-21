SELECT p.name AS object_name
FROM (SELECT name FROM person ORDER BY 1) p
UNION ALL
SELECT m.pizza_name AS object_name
FROM(SELECT pizza_name FROM menu ORDER BY 1)  m;

