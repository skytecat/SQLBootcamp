WITH ord AS (SELECT name, COUNT(*) AS count, 'visit' AS action_type
             FROM person_visits
                JOIN pizzeria pz ON pz.id = person_visits.pizzeria_id
             GROUP BY name),
vis AS (SELECT name, COUNT(*) AS count, 'order' AS action_type
        FROM person_order
            JOIN menu ON menu.id = person_order.menu_id
            JOIN pizzeria pz ON pz.id = menu.pizzeria_id
        GROUP BY name),
un AS(SELECT * FROM ord UNION SELECT * FROM vis)

SELECT name, SUM(count) AS total_count
FROM un
GROUP BY name
ORDER BY total_count DESC, name;
