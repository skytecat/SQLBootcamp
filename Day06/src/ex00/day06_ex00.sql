SELECT * FROM person;
CREATE TABLE IF NOT EXISTS person_discounts(
	id BIGINT PRIMARY KEY,
	person_id BIGINT,
	pizzeria_id BIGINT,
	CONSTRAINT fk_person_discounts_person_id FOREIGN KEY (person_id) REFERENCES person(id),
	CONSTRAINT fk_person_discounts_pizzeria_id FOREIGN KEY (pizzeria_id) REFERENCES pizzeria(id),
	discount NUMERIC
);


