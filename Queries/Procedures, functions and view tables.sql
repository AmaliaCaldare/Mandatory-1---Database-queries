DELIMITER $$
CREATE DEFINER=`sql11398214`@`%` PROCEDURE `GetRentalInfo` (IN `rentalId` INT)  NO SQL
SELECT customer.first_name, customer.last_name, customer.email, rental.rental_start, rental.rental_end, vehicle.brand, vehicle.model, vehicle.number_plate, contact_info.phone_number, contact_info.email as company_email, contact_info.opening_time, contact_info.closing_time, address.street_name, address.street_number, address.city, address.country, address.postal_code 
FROM customer INNER JOIN rental ON customer.id = rental.customer_id 
INNER JOIN vehicle ON rental.vehicle_id = vehicle.id 
INNER JOIN rental_point ON vehicle.rental_point_id = rental_point.id 
INNER JOIN contact_info ON rental_point.contact_info_id = contact_info.id 
INNER JOIN address ON rental_point.address_id = address.id
 WHERE rental.id=rentalId$$

CREATE DEFINER=`sql11398214`@`%` PROCEDURE `GetRentalPrice` (IN `rentalId` INT, OUT `rentalPrice` DOUBLE)  BEGIN
	DECLARE rstart DATE;
	DECLARE rend DATE;
    DECLARE vprice DOUBLE;
    
    SELECT 
		r.rental_start, r.rental_end, v.price 
	INTO rstart,rend,vprice
    FROM rental r
    JOIN vehicle v ON v.id = r.vehicle_id
    WHERE 
		r.id = rentalId;
    -- call the function 
    SET rentalPrice = total_price(rstart,rend,vprice);
END$$

CREATE DEFINER=`sql11398214`@`%` FUNCTION `total_price` (`start_date` DATE, `end_date` DATE, `price` DOUBLE) RETURNS DOUBLE BEGIN
	DECLARE days INT;
    DECLARE end_price DOUBLE;
		SET days = DATEDIFF(end_date,start_date);
		SET end_price = days * price;   
	RETURN (end_price);
END$$

DELIMITER ;

CREATE VIEW customers_de AS 
SELECT customer.first_name, customer.last_name, customer.email, customer.phone_number, customer.licence_num
 FROM customer
 JOIN address ON customer.address_id = address.id
 WHERE address.country="Germany";

CREATE VIEW customers_dk AS 
SELECT customer.first_name, customer.last_name, customer.email, customer.phone_number, customer.licence_num
 FROM customer
 JOIN address ON customer.address_id = address.id
 WHERE address.country="Denmark";
 