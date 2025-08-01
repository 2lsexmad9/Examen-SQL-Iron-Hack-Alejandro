CREATE DATABASE IF NOT EXISTS ExamenSQL_Alejandro;
USE ExamenSQL_Alejandro;

DROP TABLE IF EXISTS `CLIENTES`;
DROP TABLE IF EXISTS `LIBROS`;

CREATE TABLE `LIBROS`
( 
  `id_libro` int(42) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(42) NOT NULL,
  `autor` varchar(42) NOT NULL,
  `anyo` int(4) DEFAULT NULL,
  `id_cliente` int(42) DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
);

CREATE TABLE `CLIENTES`
(
  `id_cliente` int(42) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(42) NOT NULL,
  `e-mail` varchar(42) NOT NULL,
  PRIMARY KEY (`id_cliente`)
);