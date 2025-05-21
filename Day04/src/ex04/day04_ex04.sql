CREATE VIEW v_symmetric_union AS
(
WITH t AS (SELECT person_id FROM person_visits WHERE visit_date = '2022-01-02'),
	s AS(SELECT person_id FROM person_visits WHERE visit_date = '2022-01-06'),
	te AS (SELECT * FROM t EXCEPT SELECT * FROM s),
	se AS (SELECT * FROM s EXCEPT SELECT * FROM t),
	u AS (SELECT * FROM te UNION SELECT * FROM se)
SELECT * FROM u ORDER BY 1
	);

SELECT * FROM v_symmetric_union;