COMMENT ON TABLE person_discounts IS 'Personal discounts for people from pizzeria restaurants';
COMMENT ON COLUMN person_discounts.id IS 'Primary key';
COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key to person';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key to pizzeria';
COMMENT ON COLUMN person_discounts.discount IS 'Discount value in percent';