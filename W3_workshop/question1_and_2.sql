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
 
 