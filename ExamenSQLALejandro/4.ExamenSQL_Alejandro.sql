-- 4.1: Obtener los libros publicados después de 2005
SELECT *
FROM LIBROS
WHERE anyo > 2005;

-- 4.2: Obtener los clientes cuyo nombre contiene la letra "e"
SELECT *
FROM CLIENTES
WHERE nombre
LIKE '%e%';

-- 4.3: Contar el número total de libros
SELECT COUNT(*)
AS total_libros
FROM LIBROS;

-- 4.4: ¿Cuál es el título del libro con el ID 3?
SELECT titulo
FROM LIBROS
WHERE id_libro = 3;

-- 4.5: ¿Cuántos clientes tienen una dirección de correo electrónico que termina en "@gmail.com"?
SELECT COUNT(*)
AS clientes_gmail
FROM CLIENTES
WHERE `e-mail`
LIKE '%@gmail.com';

-- 4.6: ¿Cuál es el título del libro más antiguo?
SELECT titulo
FROM LIBROS
WHERE anyo = (SELECT MIN(anyo) FROM LIBROS);

-- 4.7: JOIN: Obtener los libros junto con los nombres de los clientes que los poseen
SELECT l.titulo, l.autor, c.nombre
AS cliente
FROM LIBROS l
INNER JOIN CLIENTES c ON l.id_cliente = c.id_cliente;

-- 4.8: JOIN: Obtener los clientes que no tienen libros
SELECT c.nombre, c.`e-mail`
FROM CLIENTES c
LEFT JOIN LIBROS l ON c.id_cliente = l.id_cliente
WHERE l.id_cliente IS NULL;