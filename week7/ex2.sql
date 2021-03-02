SELECT staff.store_id, SUM(payment.amount) as sum
FROM payment
JOIN staff ON staff.staff_id = payment.staff_id
WHERE payment.payment_date > (SELECT MAX(payment_date) FROM payment) - INTERVAL '30 days' 
GROUP BY staff.store_id

In order to optimize the querry we will analyze it:

explain analyzeSELECT staff.store_id, SUM(payment.amount) as sum
FROM payment
JOIN staff ON staff.staff_id = payment.staff_id
WHERE payment.payment_date > (SELECT MAX(payment_date) FROM payment) - INTERVAL '30 days' 
GROUP BY staff.store_id

The most expansive operation here is sequantional scam on payment with filter on date for last 30 days
In order to make it faster we can make index on payment date so this operation will be faster
