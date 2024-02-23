/* 1 Obtener un listado con el titulo y el autor de todos los libros prestados. */
SELECT titulo, autor FROM libros
JOIN prestamos on libros.id = prestamos.id_libro

/* 2 Obtener un listado con el dni, el nombre y el email de los socios que en algún momento hayan realizado un prestamo. Los datos del listado no se deben repetir. */
SELECT DISTINCT socios.dni, socios.nombre, socios.email FROM socios 
JOIN prestamos on socios.dni = prestamos.dni

/* 3 Obtener un listado con el dni, el nombre y el email de los socios con libros prestados no devueltos. Además de los datos mencionados, también se desea obtener el titulo del libro y el autor para saber que libros no han sido devueltos. */
SELECT socios.dni, socios.nombre, socios.email FROM socios
JOIN prestamos on socios.dni = prestamos.dni and prestamos.fecha_devolucion is null 
JOIN libros on prestamos.id_libro = libros.id;

/* 4 Obtener un listado con el titulo, el autor y la fecha de prestamo de todos los libros prestados ordenado por fecha de prestamo de mas reciente a mas antiguo. */
SELECT titulo, autor , prestamos.fecha_prestamo FROM libros
JOIN prestamos on prestamos.id_libro = libros.id
ORDER BY prestamos.fecha_prestamo desc;

/* 5 Obtener un listado con el titulo y el autor de todos los libros prestados junto a la cantidad de prestamos por cada libro. Los datos del listado se deben ordenadar de mayor a menor cantidad de prestamos. */
SELECT titulo, autor , COUNT(prestamos.id) FROM libros
JOIN prestamos on prestamos.id_libro = libros.id
GROUP BY titulo, autor ORDER BY 

/* 6 Obtener un listado con el titulo y el autor de todos los libros prestados junto a su fecha de primer prestamo ordenados ascendentemente por esta fecha de primer prestamos. */
SELECT DISTINCT libros.titulo, libros.autor, MIN(prestamos.fecha_prestamo) FROM libros
JOIN prestamos on prestamos.id_libro = libros.id
GROUP BY libros.titulo, libros.autor
ORDER BY MIN(prestamos.fecha_prestamo) asc;

/* 7 Obtener un listado con todos los datos de los socios que hayan prestado el libro con el titulo  'El cazador de sueños' y cuyo año de prestamo sea mayor a 2015. En la consulta se tiene que utilizar obligatoriamente la tabla libros. */
SELECT * FROM socios
JOIN prestamos on socios.dni = prestamos.dni
JOIN libros on libros.id = prestamos.id_libro WHERE libros.titulo like 'El cazador de sueños'
AND EXTRACT(YEAR FROM prestamos.fecha_prestamo) > 2015; 

/* 9 Obtener un listado con el titulo y el autor de todos los libros que nunca hayan sido prestados. */
SELECT DISTINCT titulo, autor FROM libros
LEFT JOIN prestamos on prestamos.id_libro = libros.id
AND prestamos.id_libro IS NULL;

/*10 Obtener un listado con todos los datos de los socios junto a los titulos de los libros prestados ordenados por el nombre del socio. Se tienen que mostrar los socios que no hayan realizado prestamos. */
SELECT socios.*, libros.titulo FROM socios 
LEFT JOIN prestamos on prestamos.dni = socios.dni
LEFT JOIN libros on prestamos.id_libro = libros.id
ORDER BY socios.nombre;