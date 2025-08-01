USE ExamenSQL_Alejandro;

INSERT INTO `CLIENTES` (`nombre`, `e-mail`) VALUES

('Costas Mitsotakis', 'Costas.Mitsotakis@proton.me'),
('Roy Sullivan', 'R.Sull@gmx.com'),
('Frane Selak', 'FR.EAK@amazon.de'),
('Mohammed Smith', 'Salammalikum@haram.com');

INSERT INTO `LIBROS` (`titulo`, `autor`, `anyo`) VALUES

('Principles', 'Ray Dalio', 2017),
('A History of Western Philosophy', 'Bertrand Russell', 1945),
('La Muerte, un Amanecer', 'Kübler Ross', 1971),
('Creativity Inc', 'Ed Catmull', 2014),
('Le suicide', 'Émile Durkheim', 1897),
('Thinking Fast and Slow', 'Daniel Kahneman', 2011),
('Good Strategy Bad Strategy', 'Richard Rumelt', 2011),
('Never Split the Difference', 'Chris Voss', 2016);

UPDATE `LIBROS` SET `id_cliente` = 1 WHERE `id_libro` IN (1, 2, 3);
UPDATE `LIBROS` SET `id_cliente` = 2 WHERE `id_libro` IN (4, 5);
UPDATE `LIBROS` SET `id_cliente` = 3 WHERE `id_libro` IN (6, 7, 8);
-- El último al no tener libros disponibles ni asignación explícita, se quedará sin libro; el que se fue a Sevilla perdió su silla