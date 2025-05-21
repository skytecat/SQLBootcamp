CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (fibonacci_number INTEGER) AS
$$
WITH RECURSIVE fibonacci_numbers AS (
    SELECT 0 AS num_1, 1 AS num_2
    UNION ALL
    SELECT num_2, num_1 + num_2
    FROM fibonacci_numbers
    WHERE num_2 < pstop
)
SELECT num_1  FROM fibonacci_numbers;
$$
LANGUAGE SQL;

select * from fnc_fibonacci(100);
select * from fnc_fibonacci();
