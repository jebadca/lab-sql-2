USE sakila;

#Select all the actors with the first name ‘Scarlett’.
SELECT actor_id,first_name
FROM actor
WHERE first_name = 'Scarlett';

#Select all the actors with the last name ‘Johansson’
SELECT actor_id,last_name
FROM actor
WHERE last_name = 'Johansson';

#How many films (movies) are available for rent?
SELECT COUNT(DISTINCT film_id)
FROM inventory;

#How many films have been rented?
SELECT COUNT(DISTINCT rental_id)
FROM rental;

#What is the shortest and longest rental period?
SELECT 
MAX(DATEDIFF(return_date, rental_date)) AS longest_rental_period, 
MIN(DATEDIFF(return_date, rental_date)) AS shortest_rental_period
FROM rental;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT
MAX(length) AS max_duration,
MIN(length) as min_duration
FROM film;

#What's the average movie duration?
SELECT AVG(length) as avg_duration
FROM film;

#What's the average movie duration expressed in format (hours, minutes)?
SELECT TIME_FORMAT(SEC_TO_TIME(AVG(length * 60)), '%H hours, %i minutes') AS avg_duration
FROM film;

#How many movies longer than 3 hours?
SELECT COUNT(length) AS num_films
FROM film
WHERE length > 180;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(first_name, ' ', UPPER(last_name), ' - ', LOWER(email)) AS formatted_name_email
FROM customer;

#What's the length of the longest film title?
SELECT max(length)
FROM film;



