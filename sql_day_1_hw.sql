-- 1. How many actors are there with the last name 'Wahlberg'
SELECT last_name, count(last_name)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;

-- 2. How many payments were made between $3.99 and $5.99
SELECT amount, count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;

-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id
ORDER BY count(film_id) DESC;

-- 4.How many customers have the last name 'William'?
SELECT last_name, count(last_name)
FROM customers
WHERE last_name = 'William'
GROUP BY last_name;

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, count(rental_id)
FROM payment
GROUP BY staff_id
ORDER BY count(rental_id);

-- 6. How many different district names are there?
SELECT count(DISTINCT district)
FROM address;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, count(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY count(actor_id) desc;

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
SELECT count(last_name)
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250
-- for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, count(amount)
FROM payment
WHERE rental_id > 250 AND customer_id BETWEEN 380 AND 430
GROUP BY amount;

-- 10. Within the film table, how many rating categories are there?
-- And what rating has the most movies total?
SELECT rating, count(rating)
FROM film
GROUP BY rating
ORDER BY count(rating) DESC;