-- отключение последовательного сканирования при выполнении запроса
SET ENABLE_SEQSCAN TO OFF;
CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id, order_date);
EXPLAIN ANALYZE
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;