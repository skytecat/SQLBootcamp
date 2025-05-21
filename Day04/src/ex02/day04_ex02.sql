CREATE VIEW v_generated_dates AS
SELECT days::date AS generated_date
FROM
	generate_series(DATE'2022-01-01', '2022-01-31', '1 day') days
ORDER BY 1;

SELECT * FROM v_generated_dates;

