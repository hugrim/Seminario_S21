INSERT INTO Categoria (categoriaId, anioCategoria, apellidoNombreJugador, nombreEquipo) VALUES
(1, 2012, 'Juan Perez', 'Equipo A'),
(2, 2012, 'Maria Lopez', 'Equipo B'),
(3, 2012, 'Carlos Ruiz', 'Equipo C'),
(4, 2013, 'Laura Gomez', 'Equipo D'),
(5, 2013, 'Javier Martinez', 'Equipo E'),
(6, 2013, 'Sofia Hernandez', 'Equipo F'),
(7, 2016, 'Ricardo Alvarez', 'Equipo G'),
(8, 2016, 'Elena Torres', 'Equipo H'),
(9, 2016, 'Victor Ramírez', 'Equipo I'),
(10, 2017, 'Ana Silva', 'Equipo J');

INSERT INTO Coordinador (coordinadorId, apellidoNombre, fechaNacimiento, dni, sexo, direccion, provincia, codigoPostal, telefono, email, directorTecnicoFanatico, hinchaClub) VALUES
(1, 'Antonio Díaz', '1980-05-15', 12345678, 'M', 'Calle Falsa 123', 'Buenos Aires', '1000', 1123456789, 'antonio.diaz@example.com', 'Club A', 'Club A'),
(2, 'Claudia Sánchez', '1985-08-25', 23456789, 'F', 'Avenida Siempre Viva 742', 'CABA', '2000', 1123456788, 'claudia.sanchez@example.com', 'Club B', 'Club B'),
(3, 'Eduardo Martín', '1975-12-30', 34567890, 'M', 'Calle Verdadera 456', 'CABA', '3000', 1123456787, 'eduardo.martin@example.com', 'Club C', 'Club C');

INSERT INTO Equipo (equipoId, nombreEquipo, categoriaEquipo, apellidoNombreJugador, nroCamisetaJugador) VALUES
(1, 'Equipo A', 1, 'Juan Perez', 10),
(2, 'Equipo B', 2, 'Maria Lopez', 9),
(3, 'Equipo C', 3, 'Carlos Ruiz', 8),
(4, 'Equipo D', 4, 'Laura Gomez', 7),
(5, 'Equipo E', 5, 'Javier Martinez', 6),
(6, 'Equipo F', 6, 'Sofia Hernandez', 5),
(7, 'Equipo G', 7, 'Ricardo Alvarez', 4),
(8, 'Equipo H', 8, 'Elena Torres', 3),
(9, 'Equipo I', 9, 'Victor Ramírez', 2),
(10, 'Equipo J', 10, 'Ana Silva', 1);

INSERT INTO Profesor (profesorId, apellidoNombre, fechaNacimiento, dni, sexo, direccion, provincia, codigoPostal, telefono, email, categoriaDirigida, equipoAsignado, directorTecnicoFanatico, hinchaClub) VALUES
(1, 'Fernando López', '1982-04-10', 98765432, 'M', 'Calle Uno 101', 'Buenos Aires', '1000', 1123456780, 'fernando.lopez@example.com', 1, 1, 'Club A', 'Club A'),
(2, 'Patricia Gómez', '1990-02-14', 87654321, 'F', 'Calle Dos 202', 'CABA', '2000', 1123456781, 'patricia.gomez@example.com', 2, 2, 'Club B', 'Club B'),
(3, 'Roberto Díaz', '1978-11-11', 76543210, 'M', 'Calle Tres 303', 'CABA', '3000', 1123456782, 'roberto.diaz@example.com', 3, 3, 'Club C', 'Club C');

INSERT INTO Jugador (jugadorId, apellidoNombre, fechaNacimiento, dni, sexo, direccion, provincia, codigoPostal, telefono, email, categoriaJugador, equipoAsignado, nroCamisetaJugador, hinchaClub) VALUES
(1, 'Lucas Fernández', '2000-01-15', 12345601, 'M', 'Calle Cuatro 404', 'Buenos Aires', '1000', 1123456783, 'lucas.fernandez@example.com', 1, 1, 10, 'Club A'),
(2, 'Marta González', '2001-02-20', 12345602, 'F', 'Calle Cinco 505', 'CABA', '2000', 1123456784, 'marta.gonzalez@example.com', 2, 2, 9, 'Club B'),
(3, 'Daniel Ramírez', '2002-03-25', 12345603, 'M', 'Calle Seis 606', 'CABA', '3000', 1123456785, 'daniel.ramirez@example.com', 3, 3, 8, 'Club C'),
(4, 'Lucía Torres', '1999-04-30', 12345604, 'F', 'Calle Siete 707', 'Buenos Aires', '1000', 1123456786, 'lucia.torres@example.com', 1, 1, 7, 'Club A'),
(5, 'Juan Martínez', '2003-05-05', 12345605, 'M', 'Calle Ocho 808', 'CABA', '2000', 1123456787, 'juan.martinez@example.com', 2, 2, 6, 'Club B'),
(6, 'Valentina Silva', '2000-06-15', 12345606, 'F', 'Calle Nueve 909', 'CABA', '3000', 1123456788, 'valentina.silva@example.com', 3, 3, 5, 'Club C'),
(7, 'Pablo López', '2001-07-20', 12345607, 'M', 'Calle Diez 1010', 'Buenos Aires', '1000', 1123456789, 'pablo.lopez@example.com', 1, 1, 4, 'Club A'),
(8, 'Sofia Morales', '1998-08-25', 12345608, 'F', 'Calle Once 1111', 'CABA', '2000', 1123456790, 'sofia.morales@example.com', 2, 2, 3, 'Club B'),
(9, 'Ricardo Alvarado', '2000-09-30', 12345609, 'M', 'Calle Doce 1212', 'CABA', '3000', 1123456791, 'ricardo.alvarado@example.com', 3, 3, 2, 'Club C'),
(10, 'Ana Torres', '1997-10-10', 12345610, 'F', 'Calle Trece 1313', 'Buenos Aires', '1000', 1123456792, 'ana.torres@example.com', 1, 1, 1, 'Club A');

INSERT INTO Liga (ligaId, nombreLiga, nroFechaLiga, equipoLocal, equipoVisitante, categoriaJugador, fechaPartidoLiga, horaPartidoLiga, equipoGanadorPartidoAsignado, nroCamisetaJugador, golesEquipoLocal, golesEquipoVisitante) VALUES
(1, 'Liga Nacional', 1, 1, 2, 1, '2024-05-01', 18, NULL, NULL, 0, 0),
(2, 'Liga Primera', 2, 3, 4, 2, '2024-05-02', 19, NULL, NULL, 0, 0),
(3, 'BundesLiga', 3, 4, 5, 3, '2024-05-02', 19, NULL, NULL, 0, 0);

INSERT INTO Fixture (fixtureId, posicionEquipo, nombreEquipo, puntosEquipo, nroPartidosGanados, nroPartidosEmpatados, nroPartidosPerdidos, cantidadGolesAFavor, cantidadGolesenContra, diferenciadeGol, ligaId) VALUES
(1, 1, 'Equipo A', 0, 0, 0, 0, 0, 0, 0, 1),
(2, 2, 'Equipo B', 0, 0, 0, 0, 0, 0, 0, 1),
(3, 3, 'Equipo C', 0, 0, 0, 0, 0, 0, 0, 2),
(4, 4, 'Equipo D', 0, 0, 0, 0, 0, 0, 0, 2);
