-- WHERE Clause exercises: every query builds on the previous

-- grab all data from the film table

SELECT *
FROM film
LIMIT 5; 

-- English films only : return all films that have a language ID of 1
-- (note: we already know this happens to be all the films in the database
-- but let's make sure we know how to do this IF there was multiple languages)

SELECT film_id, title, language_id
FROM film
WHERE language_id = 1
LIMIT 5;


-- English films for todlers
-- return all films with language ID of 1 and is rated G


SELECT film_id, title, language_id, rating
FROM film
WHERE language_id = 1 AND rating = 'G'
LIMIT 5;

	  
-- Family friendly English films
-- return all films with language ID of 1 and is rated G, PG, or PG-13

SELECT film_id, title, language_id, rating
FROM film
WHERE language_id = 1 AND rating IN ('G', 'PG', 'PG-13')
LIMIT 10;


-- Family friendly English films on a budget:
-- return all films with language ID of 1 and is rated G, PG, or PG-13,
-- and have a rental rate less than $3 and a replacement cost less than $10

SELECT film_id, title, language_id, rating, rental_rate, replacement_cost
FROM film
WHERE language_id = 1 AND rating IN ('G', 'PG', 'PG-13')
AND rental_rate < 3 AND replacement_cost < 10;

	  
-- Nostalgiac family friendly English films on a budget with a short attention span!:
-- return all films with language ID of 1 and is rated G, PG, or PG-13,
-- and have a rental rate less than $3 and a replacement cost less than $10,
-- and last less than an hour and a half long, from the year 2006 or earlier


SELECT film_id, title, language_id, rating, rental_rate, replacement_cost, length, release_year
FROM film
WHERE language_id = 1 AND rating IN ('G', 'PG', 'PG-13')
AND rental_rate < 3 AND replacement_cost < 10 AND length < 90 AND release_year <= 2006;

	  
-- BONUS
-- Of the films from the previous query, which ones talk about a 'Moose' in the description?

SELECT film_id, title, language_id, rating, rental_rate, replacement_cost, length, release_year, description
FROM film
WHERE language_id = 1 AND rating IN ('G', 'PG', 'PG-13')
AND rental_rate < 3 AND replacement_cost < 10 AND length < 90 AND release_year <= 2006 AND description ILIKE '%Moose%';