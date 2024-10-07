create database sLiga_DB;

use sLiga_DB;

CREATE TABLE Categoria (
    categoriaId INT NOT NULL PRIMARY KEY,
    anioCategoria INT,
    apellidoNombreJugador CHAR(50),
    nombreEquipo CHAR(50)
);

CREATE TABLE Coordinador (
    coordinadorId INT NOT NULL PRIMARY KEY,
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

CREATE TABLE Profesor (
    profesorId INT NOT NULL PRIMARY KEY,
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

CREATE TABLE Equipo (
    equipoId INT NOT NULL PRIMARY KEY,
    nombreEquipo CHAR(50),
    categoriaEquipo INT,
    apellidoNombreJugador CHAR(50),
    nroCamisetaJugador INT
);

CREATE TABLE Jugador (
    jugadorId INT NOT NULL PRIMARY KEY,
    apellidoNombre CHAR(100),
    fechaNacimiento DATE,
    dni INT,
    sexo CHAR(1),
    direccion CHAR(100),
    provincia CHAR(50),
    codigoPostal CHAR(10),
    telefono BIGINT,
    email CHAR(100),
    categoriaJugador INT,
    equipoAsignado INT,
    nroCamisetaJugador INT,
    hinchaClub CHAR(50),
    FOREIGN KEY (categoriaJugador) REFERENCES Categoria(categoriaId),
    FOREIGN KEY (equipoAsignado) REFERENCES Equipo(equipoId)
);

CREATE TABLE Liga (
    ligaId INT NOT NULL PRIMARY KEY,
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
    fixtureId INT NOT NULL PRIMARY KEY,
    posicionEquipo INT,
    nombreEquipo CHAR(50),
    puntosEquipo INT,
    nroPartidosGanados INT,
    nroPartidosEmpatados INT,
    nroPartidosPerdidos INT,
    cantidadGolesAFavor INT,
    cantidadGolesenContra INT,
    diferenciadeGol INT,
    ligaId INT,
    FOREIGN KEY (ligaId) REFERENCES Liga(ligaId)
);
