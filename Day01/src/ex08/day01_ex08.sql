SELECT po.order_date,
       CONCAT(p.name, '(age:', p.age, ')') AS person_information
FROM (SELECT order_date, person_id as id
      FROM person_order) po
         NATURAL JOIN person as p
ORDER BY po.order_date,
         person_information;
