SELECT day::date AS missing_date
FROM GENERATE_SERIES('2022-01-01'::date, '2022-01-10'::date, interval '1 day') AS day
         LEFT JOIN (SELECT DISTINCT visit_date
                    FROM person_visits
                    WHERE person_id = 1
                       OR person_id = 2) AS visits ON visit_date = day
WHERE visits.visit_date IS NULL;