CREATE INDEX brand ON vehicle (brand);

EXPLAIN SELECT id, model, description, price FROM vehicle
 WHERE brand = "Ford" ORDER BY price;
 
CREATE INDEX country ON address(country);

EXPLAIN SELECT customer.first_name, customer.last_name, customer.email, customer.phone_number, customer.licence_num
 FROM customer
 JOIN address ON customer.address_id = address.id 
 WHERE address.country="Denmark";