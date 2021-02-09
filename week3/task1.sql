SELECT *
FROM country
WHERE country_id >= 12 and country_id <= 17
ORDER BY country_id ASC

SELECT address 
FROM address
INNER JOIN city
ON address.city_id = city.city_id
WHERE city LIKE 'a%'

SELECT first_name, last_name, city.city 
FROM customer 
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id

SELECT customer.first_name, sum(amount) as sum
FROM payment 
INNER JOIN customer on payment.customer_id = customer.customer_id
GROUP BY customer.first_name
HAVING sum(amount) > 11
ORDER BY customer.first_name

SELECT first_name
FROM customer
GROUP BY first_name
HAVING COUNT(*) > 1;
