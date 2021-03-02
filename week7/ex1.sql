select distinct film.title,category.name as category, film.rating 
from film 
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON film_category.category_id = category.category_id 
JOIN inventory ON film.film_id = inventory.film_id 
JOIN rental ON inventory.inventory_id = rental.inventory_id  
WHERE (category.name = 'Horror' OR category.name = 'Sci-Fi') 
AND (film.rating = 'PG-13' OR film.rating = 'R') 
AND rental.return_date is not null

In order to analyse the querry:

explain analyse select distinct film.title,category.name as category, film.rating 
from film 
JOIN film_category ON film.film_id = film_category.film_id 
JOIN category ON film_category.category_id = category.category_id 
JOIN inventory ON film.film_id = inventory.film_id 
JOIN rental ON inventory.inventory_id = rental.inventory_id  
WHERE (category.name = 'Horror' OR category.name = 'Sci-Fi') 
AND (film.rating = 'PG-13' OR film.rating = 'R') 
AND rental.return_date is not null

The most expansive operations are join's , in order to reduce time we can create indexes on columns which we use to join 2 tables, e.g ( film.film_id)



