SELECT address, pizzeria.name, COUNT(*) AS count_of_orders
FROM person_order
    JOIN menu ON menu.id = person_order.menu_id
    JOIN person ON person.id = person_order.person_id
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
GROUP BY pizzeria.name, address
ORDER BY address, pizzeria.name;