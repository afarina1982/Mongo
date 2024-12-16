CREATE DATABASE GYM;

USE GYM;

-- 1. Crear la tabla Ciudades
CREATE TABLE Ciudades (
    ID_Ciudad integer PRIMARY KEY,
    Ciudad varchar(50)
);

-- 2. Crear la tabla Sucursales
CREATE TABLE Sucursales (
    ID_Sucursal varchar(12) PRIMARY KEY,
    Direccion varchar(100),
    Horario_Apertura time,
    Horario_Cierre time,
    ID_Ciudad integer,
    FOREIGN KEY (ID_Ciudad) REFERENCES Ciudades(ID_Ciudad)
);

-- 3. Crear la tabla Membresias
CREATE TABLE Membresias (
    ID_Membresia integer PRIMARY KEY,
    Nombre_Plan varchar(50),
    Precio decimal(10, 0),
    Beneficios text
);

-- 4. Crear la tabla Miembros
CREATE TABLE Miembros (
    RUT_Miembro varchar(12) PRIMARY KEY,
    Nombre varchar(25),
    Apellido varchar(25),
    Fecha_Nacimiento date,
    Correo_Electronico varchar(50),
    Fecha_Inscripcion date,
    Tipo_Membresia integer,
    FOREIGN KEY (Tipo_Membresia) REFERENCES Membresias(ID_Membresia)
);

-- 5. Crear la tabla Certificaciones
CREATE TABLE Certificaciones (
    ID_Certificacion varchar(6) PRIMARY KEY,
    Nombre_Certificacion varchar(50),
    Institucion varchar(50),
    Fecha_Obtencion date
);

-- 6. Crear la tabla Entrenadores
CREATE TABLE Entrenadores (
    RUT_Entrenador varchar(12) PRIMARY KEY,
    Nombre varchar(25),
    Apellido varchar(25),
    Fecha_Nacimiento date,
    Correo_Electronico varchar(50),
    Especialidad varchar(25)
);

-- 7. Crear la tabla Clases
CREATE TABLE Clases (
    ID_Clase integer PRIMARY KEY,
    Nombre_Clase varchar(50),
    Nivel_Dificultad varchar(50),
    Capacidad_Maxima integer
);

-- 8. Crear la tabla Equipos
CREATE TABLE Equipos (
    ID_Equipo integer PRIMARY KEY,
    Tipo_Equipo varchar(50),
    Marca varchar(50)
);

-- 9. Crear la tabla Reservas
CREATE TABLE Reservas (
    ID_Reserva integer PRIMARY KEY,
    ID_Equipo integer,
    ID_Sucursal varchar(12),
    RUT_Miembro varchar(12),
    Fecha_Reserva date,
    Hora_Reserva time,
    FOREIGN KEY (ID_Equipo) REFERENCES Equipos(ID_Equipo),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal),
    FOREIGN KEY (RUT_Miembro) REFERENCES Miembros(RUT_Miembro)
);

-- 10. Crear la tabla Clase_Entrenador
CREATE TABLE Clase_Entrenador (
    ID_Clase integer,
    RUT_Entrenador varchar(12),
    ID_Sucursal varchar(12),
    Dia_Semana varchar(15),
    Hora_Inicio time,
    PRIMARY KEY (
        ID_Clase,
        RUT_Entrenador,
        ID_Sucursal,
        Dia_Semana,
        Hora_Inicio
    ),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal),
    FOREIGN KEY (RUT_Entrenador) REFERENCES Entrenadores(RUT_Entrenador)
);

-- 11. Crear la tabla Clase_Sucursal
CREATE TABLE Clase_Sucursal (
    ID_Clase integer,
    ID_Sucursal varchar(12),
    PRIMARY KEY (ID_Clase, ID_Sucursal),
    FOREIGN KEY (ID_Clase) REFERENCES Clases(ID_Clase),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal)
);

-- 12. Crear la tabla Direcciones
CREATE TABLE Direcciones (
    ID_Direccion integer PRIMARY KEY,
    Direccion varchar(100),
    ID_Ciudad integer,
    FOREIGN KEY (ID_Ciudad) REFERENCES Ciudades(ID_Ciudad)
);

-- 13. Crear la tabla Miembro_Direccion
CREATE TABLE Miembro_Direccion (
    RUT_Miembro varchar(12),
    ID_Direccion integer,
    PRIMARY KEY (RUT_Miembro, ID_Direccion),
    FOREIGN KEY (RUT_Miembro) REFERENCES Miembros(RUT_Miembro),
    FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion)
);

-- 14. Crear la tabla Entrenador_Direccion
CREATE TABLE Entrenador_Direccion (
    RUT_Entrenador varchar(12),
    ID_Direccion integer,
    PRIMARY KEY (RUT_Entrenador, ID_Direccion),
    FOREIGN KEY (RUT_Entrenador) REFERENCES Entrenadores(RUT_Entrenador),
    FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion)
);

-- 15. Crear la tabla Telefonos
CREATE TABLE Telefonos (
    ID_Telefono integer PRIMARY KEY,
    Numero varchar(15)
);

-- 16. Crear la tabla Miembro_Telefono
CREATE TABLE Miembro_Telefono (
    RUT_Miembro varchar(12),
    ID_Telefono integer,
    FOREIGN KEY (RUT_Miembro) REFERENCES Miembros(RUT_Miembro),
    FOREIGN KEY (ID_Telefono) REFERENCES Telefonos(ID_Telefono)
);

-- 17. Crear la tabla Entrenador_Telefono
CREATE TABLE Entrenador_Telefono (
    RUT_Entrenador varchar(12),
    ID_Telefono integer,
    FOREIGN KEY (RUT_Entrenador) REFERENCES Entrenadores(RUT_Entrenador),
    FOREIGN KEY (ID_Telefono) REFERENCES Telefonos(ID_Telefono)
);

-- 18. Crear la tabla Entrenador_Sucursal
CREATE TABLE Entrenador_Sucursal (
    RUT_Entrenador varchar(12),
    ID_Sucursal varchar(12),
    FOREIGN KEY (RUT_Entrenador) REFERENCES Entrenadores(RUT_Entrenador),
    FOREIGN KEY (ID_Sucursal) REFERENCES Sucursales(ID_Sucursal),
    PRIMARY KEY (RUT_Entrenador, ID_Sucursal) -- Clave primaria compuesta
);

-- 19. Crear la tabla Miembro_Clase
CREATE TABLE Miembro_Clase (
    RUT_Miembro varchar(12),
    ID_Clase integer,
    PRIMARY KEY (RUT_Miembro, ID_Clase),
    FOREIGN KEY (RUT_Miembro) REFERENCES Miembros(RUT_Miembro),
    FOREIGN KEY (ID_Clase) REFERENCES Clases(ID_Clase)
);

-- 20. Crear la tabla Entrenador_Certificacion
CREATE TABLE Entrenador_Certificacion (
    RUT_Entrenador varchar(12),
    ID_Certificacion varchar(6),
    PRIMARY KEY (RUT_Entrenador, ID_Certificacion),
    FOREIGN KEY (RUT_Entrenador) REFERENCES Entrenadores(RUT_Entrenador),
    FOREIGN KEY (ID_Certificacion) REFERENCES Certificaciones(ID_Certificacion)
);