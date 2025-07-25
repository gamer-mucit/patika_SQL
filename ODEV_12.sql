SELECT * FROM film 
WHERE length > (
SELECT AVG(length) FROM film
);

SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT * FROM film 
WHERE rental_rate = (
SELECT MIN(rental_rate)FROM film
) AND replacement_cost =(
SELECT MIN(replacement_cost) FROM film 
);

SELECT customer.first_name,customer.last_name FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE amount = (
SELECT MAX(amount) FROM payment
);