SELECT pizzeria.name AS name, COUNT(*) AS count_of_orders, ROUND(AVG(price),2) AS average_price,
       MAX(price) AS max_price, MIN(price) AS min_price
FROM person_order po
    JOIN menu ON menu.id = po.menu_id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY name
ORDER BY name;