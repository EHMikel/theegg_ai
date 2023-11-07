/*INSERT INTO cliente( 
	id_cliente, 
	nombre, 
	apellido, 
	fecha_nacimiento, 
	direccion, 
	telefono, 
	fecha_alta
)
VALUES (4, 'mihalea', 'gonzalez', '23-03-1800', 'la super direccion de entrega4', 
	   '(+34) 600000003', current_date); 

ACTUALIZAR UNA FEATURE DE UNA INSTANCIA
UPDATE cliente 
SET fecha_nacimiento = '12-02-2000'
WHERE id_cliente= 4

INSERTAR UNA NUEVA INSTANCIA EN UN PRODUCTO
INSERT INTO producto(
	id_producto, 
	nombre_producto, 
	precio_producto
)
VALUES (0, 'mojate', 2.2), (1, 'pasta de dientes', 3), (2, 'licor del caribe', 11), 
	   (3, 'cepillo de dientes', 1.5), (4, 'bambú', 74.22)
	   
BORRAR UNA INSTANCIA DE UNA TABLA
DELETE FROM 
	producto 
WHERE nombre_producto LIKE '%mojate%';


BORRAR UNA COLUMNA
ALTER TABLE
cliente DROP COLUMN fecha_alta;


-- RENOMBRAR COLUMNAS
ALTER TABLE 
cliente RENAME COLUMN direccion TO direccion_envio;

ALTER TABLE cliente RENAME COLUMN apellido TO primer_apellido;
ALTER TABLE cliente RENAME COLUMN telefono TO telefono_movil;


-- AÑADIR COLUMNA 
ALTER TABLE cliente ADD activx boolean NOT NULL DEFAULT(True);

-- AÑADIR RESTRICCION
ALTER TABLE producto ADD CONSTRAINT precio_positivo CHECK (precio_unitario >0);

-- ELIMINAR UNA TABLA
DROP TABLE descuento; 


ALTER TABLE pedido
drop constraint pedido_id_cliente_fkey; 


ALTER TABLE pedido 
ADD CONSTRAINT pedido_id_cliente_fkey
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON
DELETE CASCADE;


INSERT INTO public.pedido(
	id_pedido, id_cliente, fecha_pedido, forma_pago, enviado
)
VALUES (1, 3, '01-10-2022', 'TARJETA', True);
*/
DELETE FROM cliente where id_cliente = 3;
/*
*/

