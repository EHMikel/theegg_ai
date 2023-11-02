-- Primer contacto
SELECT*FROM actor; 
SELECT first_name, last_name FROM actor;
SELECT first_name as nombre, last_name as apellido from actor;
--Ejercico 1
SELECT name from category;
-- apartado 2
SELECT COUNT(*) as numero_de_filas from actor;
SELECT DISTINCT(first_name) as nombres_distintos from actor;
-- No se muy bien como hacer el ejercico 2 ... 
SELECT COUNT(DISTINCT(first_name)) as numero_de_nombres from actor;
-- apartado 3
SELECT*FROM film;
SELECT COUNT(*) as numero_de_filas from film;
-- MAXIMO Y MINIMO DE UNA COLUMNA
SELECT 
MAX(rental_rate) as max_precio, 
MIN(rental_rate) as min_precio
FROM film;
-- MÁS ESTADISTICAS sobre la columna length
SELECT
MAX(length) as max_duration, 
MIN(length) as min_duration, 
ROUND(AVG(length), 2) as avg_duration, 
MAX(length) - MIN(length) as rango_duracion,
MODE() WITHIN GROUP (ORDER BY LENGTH) as moda_duration,
COUNT(DISTINCT(length)) as unicos_duration,
ROUND(STDDEV(length), 1) as dev_std_duracion
FROM film; 
-- FILTRANDO DATOS CON WHERE
SELECT*FROM film WHERE rental_rate = 4.99; 
/*
Ejercicio 3: Selecciona los atributos de título, 
duración del alquiler y precio del alquiler de la película (tabla film)
para la película con film_id = 5.
*/
SELECT title as titulo, rental_duration as duracion, rental_rate as precio  FROM film where film_id= 5;
-- ORDENANDO DATOS
SELECT*FROM film ORDER BY length DESC; -- muestrame toda la tabla ordenado por su duracion de menor a mayor
-- EJERCIO 4 ORDENARLOS EN SENTIO CONTRARIO
SELECT*FROM film ORDER BY length ASC; 
-- LIMIT
SELECT title, rental_rate FROM film ORDER BY length DESC LIMIT 2;
-- WHERE Y OPERADORES LÓGICOS
SELECT*FROM film
WHERE rental_rate > 0.99 and rental_rate < 4.99 ORDER BY rental_rate ASC;
-- EJERCICIO 5 FILTRANDO MÁS COLUMNAS COMO CRITERIO
SELECT*FROM film
WHERE length < 50 and rental_rate < 4.99 ORDER BY rental_rate ASC;
-- CAMBIAMOS DE TABLA, OPERADOR OR y NOT
SELECT*FROM payment 
WHERE customer_id= 1 or customer_id= 300 AND NOT staff_id= 2;
-- OPERADOR IN
SELECT*FROM payment
WHERE amount IN (0.99, 5.99, 10.99) ORDER BY amount DESC;
--BETWEEN
SELECT*FROM payment 
WHERE payment_date BETWEEN '2007-04-10' AND '2007-04-18';
-- EJERCICIO 6 ordenar la consulta anterior por la variable amount
SELECT*FROM payment 
WHERE payment_date BETWEEN '2007-04-10' AND '2007-04-18' ORDER BY amount ASC;
-- BETWEEN CON OPERADORES LÓGICOS
SELECT*FROM payment
WHERE payment_date BETWEEN '2007-04-10' AND '2007-04-18'
AND NOT staff_id= 2 AND amount > 7.00;
