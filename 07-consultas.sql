-- Mostrar los datos de los entrenadores ordenados alfabéticamente por apellido y nombre
SELECT
    E.Apellido,
    E.Nombre,
    E.RUT_Entrenador,
    E.Fecha_Nacimiento,
    E.Correo_Electronico,
    E.Especialidad,
    C.Nombre_Certificacion,
    C.Fecha_Obtencion
FROM
    Entrenadores E
    LEFT JOIN Entrenador_Certificacion EC ON E.RUT_Entrenador = EC.RUT_Entrenador
    LEFT JOIN Certificaciones C ON EC.ID_Certificacion = C.ID_Certificacion
ORDER BY
    E.Apellido,
    E.Nombre;

-- Dado el ID de una sucursal, mostrar todas las clases que se dictan allí con su respectivo horario y el nombre del entrenador que dicta esa clase
SELECT
    s.ID_Sucursal,
    s.Direccion,
    c.Nombre_Clase,
    ce.Hora_Inicio,
    e.Nombre AS Nombre_Entrenador,
    e.Apellido AS Apellido_Entrenador
FROM
    Clase_Entrenador ce
    JOIN Clases c ON ce.ID_Clase = c.ID_Clase
    JOIN Entrenadores e ON ce.RUT_Entrenador = e.RUT_Entrenador
    JOIN Sucursales s ON ce.ID_Sucursal = s.ID_Sucursal
WHERE
    ce.ID_Sucursal = 'SUC-02'; -- Reemplaza 'SUC-01' con el ID de la sucursal que desees consultar

-- Mostrar cuántas reservas se han realizado para cada equipo
SELECT
    E.Tipo_Equipo,
    COUNT(R.ID_Reserva) AS Total_Reservas
FROM
    Equipos E
    LEFT JOIN Reservas R ON E.ID_Equipo = R.ID_Equipo
GROUP BY
    E.Tipo_Equipo;

-- Dado el RUT de un miembro, mostrar las reservas que ha realizado, indicando el equipo reservado y la sucursal
SELECT
    r.ID_Reserva,
    r.Fecha_Reserva,
    r.Hora_Reserva,
    e.Tipo_Equipo,
    s.Direccion,
    r.ID_Sucursal
FROM
    Reservas r
    JOIN Equipos e ON r.ID_Equipo = e.ID_Equipo
    JOIN Sucursales s ON r.ID_Sucursal = s.ID_Sucursal
WHERE
    r.RUT_Miembro = '11111111-1'; -- Reemplaza 'EL_RUT_DEL_MIEMBRO' con el RUT del miembro que deseas consultar
    
-- Mostrar los datos de los miembros ordenados por membresía, indicando por cada miembro, en cuántas clases está inscrito y cuántas reservas ha realizado
SELECT
    mem.Nombre_Plan AS Nombre_Membresia,
    m.RUT_Miembro,
    m.Nombre,
    m.Apellido,
    m.Fecha_Nacimiento,
    m.Correo_Electronico,
    m.Fecha_Inscripcion,
    d.Direccion,
    c.Ciudad,
    COUNT(DISTINCT ce.ID_Clase) AS Clases_Inscritas,
    COUNT(DISTINCT r.ID_Reserva) AS Reservas_Realizadas
FROM
    Miembros m
    JOIN Membresias mem ON m.Tipo_Membresia = mem.ID_Membresia
    LEFT JOIN Miembro_Direccion md ON m.RUT_Miembro = md.RUT_Miembro
    LEFT JOIN Direcciones d ON md.ID_Direccion = d.ID_Direccion
    LEFT JOIN Ciudades c ON d.ID_Ciudad = c.ID_Ciudad
    LEFT JOIN Miembro_Clase ce ON m.RUT_Miembro = ce.RUT_Miembro -- Unir Miembro_Clase para contar clases
    LEFT JOIN Reservas r ON m.RUT_Miembro = r.RUT_Miembro
GROUP BY
    mem.Nombre_Plan,
    m.RUT_Miembro,
    m.Nombre,
    m.Apellido,
    m.Fecha_Nacimiento,
    m.Correo_Electronico,
    m.Fecha_Inscripcion,
    d.Direccion,
    c.Ciudad
ORDER BY
    mem.Nombre_Plan;

-- Ordenar por el nombre del plan de membresía