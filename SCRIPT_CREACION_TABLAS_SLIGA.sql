create database new_sLiga_DB;
use new_sLiga_DB;

CREATE TABLE Categoria (
    categoriaId INT AUTO_INCREMENT PRIMARY KEY,
    anioCategoria INT,
    apellidoNombreJugador CHAR(50),
    nombreEquipo CHAR(50)
);

CREATE TABLE Coordinador (
    coordinadorId INT AUTO_INCREMENT PRIMARY KEY,
    apellidoNombre CHAR(100),
    fechaNacimiento DATE,
    dni INT,
    sexo CHAR(1),
    direccion CHAR(100),
    provincia CHAR(50),
    codigoPostal CHAR(10),
    telefono BIGINT,
    email CHAR(100),
    directorTecnicoFanatico CHAR(100),
    hinchaClub CHAR(50)
);

CREATE TABLE Equipo (
    equipoId INT AUTO_INCREMENT PRIMARY KEY,
    nombreEquipo CHAR(50),
    categoriaEquipo INT,
    apellidoNombreJugador CHAR(50),
    nroCamisetaJugador INT,
	cantidadPartidosGanados INT,
    cantidadPartidosEmpatados INT,
    cantidadPartidosPerdidos INT,
    cantidadGolesAFavor INT,
    cantidadGolesenContra INT,
    diferenciadeGol INT
);

CREATE TABLE Profesor (
    profesorId INT AUTO_INCREMENT PRIMARY KEY,
    apellidoNombre CHAR(100),
    fechaNacimiento DATE,
    dni INT,
    sexo CHAR(1),
    direccion CHAR(100),
    provincia CHAR(50),
    codigoPostal CHAR(10),
    telefono BIGINT,
    email CHAR(100),
    categoriaDirigida INT,
    equipoAsignado INT,
    directorTecnicoFanatico CHAR(100),
    hinchaClub CHAR(50),
    FOREIGN KEY (equipoAsignado) REFERENCES Equipo(equipoId)
);



CREATE TABLE Jugador (
    jugadorId INT AUTO_INCREMENT PRIMARY KEY,
    apellidoNombre CHAR(100),
    fechaNacimiento DATE,
    dni INT,
    sexo CHAR(1),
	edad INT,
    direccion CHAR(100),
    provincia CHAR(50),
    codigoPostal CHAR(10),
    email CHAR(100),
    telefono BIGINT,
	hinchaClub CHAR(50),
    categoriaJugador INT,
    equipoAsignado CHAR(80),
    nroCamisetaJugador INT,
	equipoAsignadoId INT,
	categoriaJugadorId INT,
    FOREIGN KEY (categoriaJugadorId) REFERENCES Categoria(categoriaId),
    FOREIGN KEY (equipoAsignadoId) REFERENCES Equipo(equipoId)
);

CREATE TABLE Liga (
    ligaId INT AUTO_INCREMENT PRIMARY KEY,
    nombreLiga CHAR(100),
    nroFechaLiga INT,
    equipoLocal INT,
    equipoVisitante INT,
    categoriaJugador INT,
    fechaPartidoLiga DATE,
    horaPartidoLiga INT,
    equipoGanadorPartidoAsignado INT,
    nroCamisetaJugador INT,
    golesEquipoLocal INT,
    golesEquipoVisitante INT,
    FOREIGN KEY (equipoLocal) REFERENCES Equipo(equipoId),
    FOREIGN KEY (equipoVisitante) REFERENCES Equipo(equipoId),
    FOREIGN KEY (categoriaJugador) REFERENCES Categoria(categoriaId)
);

CREATE TABLE Fixture (
    fixtureId INT AUTO_INCREMENT PRIMARY KEY,
    posicionEquipo INT,
    nombreEquipo CHAR(50),
    cantidadPuntosEquipo INT,
    ligaId INT,
    FOREIGN KEY (ligaId) REFERENCES Liga(ligaId)
);
