CREATE VIEW active_customer
AS
SELECT *
FROM customer 
WHERE active = 1

CREATE VIEW active_address
AS
SELECT *
FROM address
WHERE phone IS NOT null

SELECT *
FROM address
WHERE phone IS NOT null

CREATE TRIGGER customerT
ON dvdrental.customer
AFTER INSERT
AS
BEGIN
 SELECT *
 FROM customer
END
