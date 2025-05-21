CREATE OR REPLACE FUNCTION func_minimum(VARIADIC arr NUMERIC[])
RETURNS NUMERIC AS $$
DECLARE min NUMERIC;
BEGIN
    SELECT MIN(values) INTO min
    FROM unnest(arr) AS values;
RETURN min;
END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);

