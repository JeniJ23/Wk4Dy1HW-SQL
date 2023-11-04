--1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

            --Answer =  2 - Daryl, and Nick Wahlberg

--2. How many payments were made between $3.99 and $5.99?

SELECT amount 
FROM payment
HAVING(amount) 3.99 BETWEEN 5.99; ***

--3. What film does the store have the most of? (search in inventory)

SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id)DESC;

            --Answer: Multiple movies have atleast 8 copies in inventory

--4. How many customers have the last name ‘William’?
SELECT last_name, first_name
FROM customer
GROUP BY customer_id
WHERE last_name LIKE 'William'; ***

--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, SUM(rental_id)
FROM rental
GROUP BY staff_id;

            -- Answer: staff_id #1 sold the most rentals = $64,772,28 and Staff member #2 sold = $63,986,771

--6. How many different district names are there?

SELECT *
FROM address
ORDER BY district;

or

SELECT district
FROM address
ORDER BY district;

or 

SELECT COUNT(district)
FROM address
GROUP BY district;

            --Answer: Total count of districts 603


--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(film_actor), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id)DESC;

            -- Answer: Film #508 has 15 actors --

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT last_name
FROM customer
WHERE last_name LIKE '___es';

            -- Answer: Total number = 10 customers --

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating
FROM film
GROUP BY rating
ORDER BY COUNT(rating)DESC;

--And what rating has the most movies total?

SELECT COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating)DESC;

or

SELECT film_id, rating
FROM film
ORDER BY film_id
DESC;

or 

SELECT COUNT(rating), film_id
FROM film
GROUP BY rating, film_id;

 --Answer: Total = 5 different rating categories: G, PG, PG-13, NC-17,and R ratings with PG-13

--9.*Extra Credit* How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
--with ids between 380 and 430? (use group by and having > 250)

