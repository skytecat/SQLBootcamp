CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date
    (pperson VARCHAR DEFAULT 'Dmitriy', pprice NUMERIC DEFAULT 500, pdate DATE DEFAULT '2022-01-08')
RETURNS TABLE (name VARCHAR) AS $$
BEGIN
    RETURN QUERY
    WITH vis AS (SELECT DISTINCT pz.name
        FROM person_visits  pv
            JOIN menu ON pv.pizzeria_id = menu.pizzeria_id
            JOIN pizzeria pz ON pz.id = pv.pizzeria_id
            JOIN person ON person.id = pv.person_id
        WHERE price < pprice AND person.name = pperson AND visit_date = pdate),

    p AS (SELECT DISTINCT pz.name
          FROM menu
              JOIN pizzeria pz ON pz.id = menu.pizzeria_id
          WHERE price < pprice)
SELECT *
FROM vis INTERSECT SELECT * FROM p;
END;
$$ LANGUAGE plpgsql;

select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');

