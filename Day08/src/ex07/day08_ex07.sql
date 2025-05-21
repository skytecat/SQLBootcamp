-- Session 1
BEGIN;

-- Session 2
BEGIN;

-- Session 1
UPDATE pizzeria SET rating = 2 WHERE name = 'DinoPizza';

-- Session 2
UPDATE pizzeria SET rating = 5 WHERE name = 'Dominos';

-- Session 1
UPDATE pizzeria SET rating = 2 WHERE name = 'Dominos';

-- Session 2
UPDATE pizzeria SET rating = 5 WHERE name = 'DinoPizza';

-- Session 1
COMMIT;
-- Произошла ситуация deadlock

-- Session 2
COMMIT;

-- Сохранились только изменения, сделанные в первой транзакции