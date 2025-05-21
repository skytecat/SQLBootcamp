-- отключение последовательного сканирования при выполнении запроса
SET ENABLE_SEQSCAN TO OFF;
EXPLAIN ANALYZE SELECT * FROM menu JOIN pizzeria ON pizzeria_id = pizzeria.id;

