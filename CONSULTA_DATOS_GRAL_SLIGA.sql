SELECT 
    J.jugadorId,
    J.apellidoNombre AS NombreJugador,
    E.nombreEquipo AS EquipoJugador,
    P.apellidoNombre AS Profesor,
    CO.apellidoNombre AS Coordinador,
    J.categoriaJugador,
    L.nombreLiga,
    F.posicionEquipo,
    F.puntosEquipo,
    F.cantidadGolesAFavor,
    F.cantidadGolesenContra
FROM 
    Jugador J
JOIN 
    Equipo E ON J.equipoAsignado = E.equipoId
JOIN 
    Profesor P ON P.equipoAsignado = E.equipoId
JOIN 
    Coordinador CO ON CO.coordinadorId = P.profesorId
JOIN 
    Liga L ON L.categoriaJugador = J.categoriaJugador
JOIN 
    Fixture F ON F.nombreEquipo = E.nombreEquipo;
