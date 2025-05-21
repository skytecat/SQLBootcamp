-- Session 1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- Session 2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- Session 1
BEGIN;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
BEGIN;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 1
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';

-- Session 2
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
-- Возникла ошибка ERROR:  could not serialize access due to concurrent update из-за того,
-- что одновременно две транзакции пытаются изменить одни и те же данные

-- Session 1
COMMIT;

-- Session 2
COMMIT;
-- ROLLBACK - это команда в SQL, которая отменяет все изменения, сделанные в рамках текущей транзакции

-- Session 1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';

-- Both are 4 now