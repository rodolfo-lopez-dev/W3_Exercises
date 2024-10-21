SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS "Actor Name"
FROM actor;

SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS "Actor Name"
FROM actor
ORDER BY last_name;

/* first mistake, using northwind rather than sakila. */

 SELECT actor_id, first_name, last_name
 FROM actor
 WHERE first_name = 'Joe';
 
 SELECT film.title, CONCAT(actor.first_name, ' ', actor.last_name) AS "Actor Name"
 FROM film 
 INNER JOIN film_actor ON film.film_id = film_actor.film_id
 INNER JOIN actor ON film_actor.actor_id = actor.actor_id
 WHERE actor.first_name = 'Joe';
 
 
 SELECT first_name, last_name
 FROM actor 
 WHERE last_name LIKE '%GEN%';
 
 SELECT first_name, last_name
 FROM actor 
 WHERE last_name LIKE '%LI%'
 ORDER BY last_name, first_name;
 
 SELECT actor.first_name, actor.last_name, COUNT(film_actor.film_id) AS "Total Movies"
 FROM actor 
 INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
 WHERE actor.last_name LIKE '%LI%'
 GROUP BY actor.actor_id
 ORDER BY actor.last_name, actor.first_name;
 
 SELECT last_name, COUNT(*) AS "Number of Actors"
 FROM actor GROUP BY last_name HAVING COUNT(*) >=2;
 
 UPDATE actor SET first_name = 'Harpo'
 WHERE first_name = 'Groucho' AND last_name = 'Williams';
 
 SELECT first_name, last_name
 FROM actor 
 WHERE last_name = 'Williams';
 
 UPDATE actor SET first_name = 'Groucho'
 WHERE first_name = 'Harpo' AND last_name = 'Williams';
 
 SELECT first_name, last_name
 FROM actor WHERE last_name = 'Williams';
 
 SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS "Total Amount"
FROM staff
INNER JOIN payment ON staff.staff_id = payment.staff_id
WHERE payment.payment_date BETWEEN '2005-08-01' AND '2005-08-31'
GROUP BY staff.staff_id;

SELECT film.title, COUNT(film_actor.actor_id) AS "Number of Actors" FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.film_id;

SELECT COUNT(*) FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE film.title = 'HUNCHBACK IMPOSSIBLE';

SELECT title FROM film
WHERE (title LIKE 'K%' OR title LIKE 'Q%')
AND language_id = (
    SELECT language_id
    FROM language
    WHERE name = 'English'
);

INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id)
VALUES (
    '2024-10-10 10:00:00', 
    (SELECT inventory_id FROM inventory
     WHERE film_id = (SELECT film_id FROM film WHERE title = 'ACADEMY DINOSAUR') 
     AND store_id = 1 LIMIT 1),
    (SELECT customer_id FROM customer WHERE first_name = 'Mary' AND last_name = 'Smith'),
    '2024-10-17 10:00:00', 
    (SELECT staff_id FROM staff WHERE first_name = 'Mike' AND last_name = 'Hillyer')
);

SELECT * 
FROM rental
WHERE customer_id = (SELECT customer_id FROM customer WHERE first_name = 'Mary' AND last_name = 'Smith')
ORDER BY rental_date DESC
LIMIT 1;





