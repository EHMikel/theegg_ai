--GROUPBY 1
SElECT rental_rate, round(AVG(length),2) as duracion_media -- , round(AVG('length'),2) 
FROM film
GROUP BY rental_rate;
--GROUPBY 2
SELECT RATING, 
	round(avg(length), 0) as duracion_media, 
	round(avg(RENTAL_DURATION), 2) as duracion_alg_media, 
	round(avg(RENTAL_RATE), 2) as precio_medio
FROM film 
GROUP BY RATING
ORDER BY duracion_media DESC;
--HAVING
SELECT rating,  
	round(avg(length), 0) as duracion_media, 
	round(avg(rental_duration), 2) as duracion_alg_media, 
	round(avg(rental_rate), 2) as precio_medio
FROM film
GROUP BY rating
HAVING round(avg(rental_duration), 2) < 5;
-- INNER JOIN
SELECT rental_id,         -- las columnas de rental
	   rental_date, 
	   return_date, 
	   inventory_id, 
	   customer_id, 
	   staff.first_name,  -- las columnas de staff
	   staff.last_name, 
	   staff.email
FROM rental               -- se define la primera columna
INNER JOIN staff on rental.staff_id = staff.staff_id; -- donde quiero que lo una
-- UNION DE TRES TABLAS
SELECT rental_id,          -- columnas rental
	   rental_date, 
	   return_date, 
	   inventory_id, 
	   s.first_name as nombre_empleadx,   -- columnas staff
	   s.last_name as apellido_empleadx, 
	   s.email, 
	   c.first_name as nombre_cli,        -- columnas customer
	   c.last_name as apellido_cli
FROM rental                               -- indicamos la tabla principal
INNER JOIN staff s on rental.staff_id = s.staff_id  -- la segunda tabla
INNER JOIN customer c using(customer_id);           -- la tercera tabla
-- LEFT JOIN 
SELECT  -- se indican las columnas que quermos unidas
		c.customer_id, 
		c.first_name, 
		c.last_name, 
		a.actor_id, 
		a.first_name, 
		a.last_name
FROM customer as c            -- se indica la tabla principal
LEFT JOIN actor as a          -- se indica la tabla 2
ON c.last_name = a.last_name; -- se indica donde queremos que se unan
-- RIGHT JOIN
SELECT 
		c.customer_id, 
		c.first_name, 
		c.last_name, 
		a.actor_id, 
		a.first_name, 
		a.last_name
FROM customer as c
RIGHT JOIN actor as a
ON c.last_name = a.last_name
ORDER BY c.last_name; 
-- FULL OUTER JOIN
SELECT
		c.customer_id, 
		c.first_name, 
		c.last_name, 
		a.actor_id, 
		a.first_name, 
		a.last_name
FROM customer as c
FULL OUTER JOIN actor as a
ON c.last_name = a.last_name
ORDER BY c.last_name;
-- UNION
SELECT c.first_name, c.last_name
FROM customer as c
WHERE c.customer_id <= 10
UNION
SELECT a.first_name, 
	   a.last_name
FROM actor as a
WHERE a.actor_id <= 20;
-- UNION ALL
SELECT c.first_name, c.last_name
FROM customer as c
WHERE c.customer_id <= 10
UNION ALL
SELECT a.first_name, 
       a.last_name
FROM actor as a 
WHERE a.actor_id <= 20;