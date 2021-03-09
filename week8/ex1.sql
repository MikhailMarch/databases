CREATE OR REPLACE FUNCTION get_address()
RETURNS TABLE (address VARCHAR(50)) AS
$$
BEGIN
RETURN QUERY
SELECT address.address
FROM address
WHERE address.city_id <= 600 and address.city_id >=400 and (address.address like '11%' or address.address like '%11%');
END; $$
LANGUAGE plpgsql;
