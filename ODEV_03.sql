SELECT * FROM country
WHERE country LIKE '_____%n';

SELECT * FROM country
WHERE country LIKE 'A%a';

SELECT * FROM film
WHERE title ILIKE '%t%t%t%t%';

SELECT * FROM film
WHERE(title LIKE 'C%') AND (length > 90) AND (rental_rate = 2.99);
