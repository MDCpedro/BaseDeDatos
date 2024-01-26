-- 1. Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
SELECT DISTINCT c.id, c.nombre, c.apellido1 ||' '|| c.apellido2 as apellidos
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
ORDER BY c.nombre, apellidos;

-- 2. Devuelve un listado que solamente muestre los clientes que no han realizado ningún pedido.
SELECT DISTINCT c.nombre
FROM cliente c
LEFT JOIN pedido p ON c.id = p.id_cliente
WHERE p.id IS NULL 

-- 3. Devuelve un listado que solamente muestre los comerciales que no han realizado ningún pedido.
SELECT DISTINCT c.id, c.nombre, c.apellido1 ||' '|| c.apellido2 as apellidos
FROM comercial c
INNER JOIN pedido p ON c.id = p.id_comercial
ORDER BY c.nombre, apellidos;

-- 4. Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT * FROM cliente c 
JOIN pedido p ON p.id_cliente = c.id 
order by c.nombre asc, c.apellido1 asc, c.apellido2 asc;

-- 5. Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
SELECT * FROM comercial c 
JOIN pedido p ON p.id_cliente = c.id 
order by c.nombre asc, c.apellido1 asc, c.apellido2 asc;

-- 6. Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
SELECT DISTINCT * FROM cliente cli
JOIN pedido p ON p.id_cliente = cli.id
JOIN comercial com ON p.id_comercial = com.id

-- 7. Devuelve un listado con los clientes que no han realizado ningún pedido y de los comerciales que no han participado en ningún pedido. Ordene el listado alfabéticamente por los apellidos y el nombre. En en listado deberá diferenciar de algún modo los clientes y los comerciales.

-- 8. Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
SELECT DISTINCT * FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
WHERE EXTRACT(YEAR FROM fecha) = 2017
AND total BETWEEN 300 AND 1000;

-- 9. Devuelve un listado con todos los comerciales junto con los datos de los pedidos que han realizado. Este listado también debe incluir los comerciales que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los comerciales.

-- 10. Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
SELECT DISTINCT cm.nombre, cm.apellido1, cm.apellido2
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
INNER JOIN comercial cm ON p.id_comercial = cm.id
WHERE c.nombre = 'María' AND c.apellido1 = 'Santana' AND c.apellido2 = 'Moreno';

-- 11. Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
SELECT DISTINCT c.nombre
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
INNER JOIN comercial cm ON p.id_comercial = cm.id
WHERE cm.nombre = 'Daniel' AND cm.apellido1 = 'Sáez' AND cm.apellido2 = 'Vega';

-- 12. Devuelve un listado con todos los clientes junto con los datos de los pedidos que han realizado. Este listado también debe incluir los clientes que no han realizado ningún pedido. El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los clientes.