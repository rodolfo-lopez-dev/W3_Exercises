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
 
 # 