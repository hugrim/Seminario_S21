create database new_sLiga_DB;
use new_sLiga_DB;

CREATE TABLE Categoria (
    categoriaId INT AUTO_INCREMENT PRIMARY KEY,
    anioCategoria INT
);

CREATE TABLE Coordinador (
    coordinadorId INT AUTO_INCREMENT PRIMARY KEY,
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
    directorTecnicoFavorito CHAR(100),
	cantidadProfesoresACargo INT
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
    diferenciadeGol INT,
    apellidoNombreProfesor CHAR(100)
);

CREATE TABLE Profesor (
    profesorId INT AUTO_INCREMENT PRIMARY KEY,
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
    categoriaDirigida INT,
    directorTecnicoFavorito CHAR(100),
    equipoAsignado CHAR(100)
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
    nroCamisetaJugador INT
);

CREATE TABLE Liga (
    ligaId INT AUTO_INCREMENT PRIMARY KEY,
    nombreLiga CHAR(100),
    nroFechaLiga INT,
    categoriaLiga INT,
    equipo CHAR(100),
	posicionEquipo INT
);

CREATE TABLE Fixture (
    fixtureId INT AUTO_INCREMENT PRIMARY KEY,
    nombreEquipo CHAR(50),
    cantidadPuntosEquipo INT
);

CREATE TABLE Partido (
	partidoId INT AUTO_INCREMENT PRIMARY KEY,
    equipoLocal  CHAR(100),
    equipoVisitante  CHAR(100),
	categoria INT,
    fechaPartido DATE,
    horaPartido INT,
    cantidadGolesEquipoLocal INT,
    cantidadGolesEquipoVisitante INT,
    equipoGanadorPartido  CHAR(100)
);
