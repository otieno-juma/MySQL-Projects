ALTER TABLE rental
ADD CONSTRAINT fk_rental_cusTomer_id FOREIGN KEY(customer_id)
REFERENCES customer(customer_id) ON DELETE RESTRICT;