-- отключение последовательного сканирования при выполнении запроса
SET ENABLE_SEQSCAN TO OFF;
CREATE INDEX idx_person_name ON person (UPPER(name));
EXPLAIN ANALYZE SELECT * FROM person WHERE UPPER(name) = 'ANNA';

