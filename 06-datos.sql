USE GYM;

-- 1. Datos para la tabla Ciudades
INSERT INTO Ciudades (ID_Ciudad, Ciudad) VALUES 
(1, 'Santiago'), 
(2, 'Valparaíso'), 
(3, 'Concepción'), 
(4, 'Temuco'), 
(5, 'Antofagasta'), 
(6, 'La Serena'), 
(7, 'Puerto Montt'), 
(8, 'Viña del Mar'), 
(9, 'Rancagua'), 
(10, 'Talca');

-- 2. Datos para la tabla Sucursales 
INSERT INTO Sucursales (ID_Sucursal, Direccion, Horario_Apertura, Horario_Cierre, ID_Ciudad) VALUES 
('SUC-01', 'Av. Providencia 123', '06:00:00', '22:00:00', 1),
('SUC-02', 'Calle Colon 456', '07:00:00', '21:00:00', 2),
('SUC-03', 'Alameda 789', '08:00:00', '23:00:00', 3),
('SUC-04', 'Calle España 321', '06:00:00', '22:00:00', 4),
('SUC-05', 'Av. Costanera 567', '07:00:00', '21:00:00', 5),
('SUC-06', 'Calle Central 890', '06:30:00', '22:00:00', 6),
('SUC-07', 'Av. Libertad 234', '08:00:00', '23:00:00', 7),
('SUC-08', 'Calle Comercio 678', '06:00:00', '22:30:00', 8),
('SUC-09', 'Av. Principal 910', '07:00:00', '21:30:00', 9),
('SUC-10', 'Calle Lateral 112', '06:30:00', '22:00:00', 10);

-- 3. Datos para la tabla Membresias
INSERT INTO Membresias (ID_Membresia, Nombre_Plan, Precio, Beneficios) VALUES 
(1, 'Mensual', 30000, 'Acceso a todas las clases'),
(2, 'Anual', 300000, 'Acceso ilimitado a todas las clases y equipos'),
(3, 'Premium', 500000, 'Acceso ilimitado a clases, equipos y sesiones personalizadas con entrenadores');

-- 4. Datos para la tabla Miembros
INSERT INTO Miembros (RUT_Miembro, Nombre, Apellido, Fecha_Nacimiento, Correo_Electronico, Fecha_Inscripcion, Tipo_Membresia) VALUES
('11111111-1', 'Juan', 'Pérez', '1990-01-01', 'juan.perez@example.com', '2024-01-01', 1),
('22222222-2', 'María', 'González', '1992-02-02', 'maria.gonzalez@example.com', '2024-01-01', 2),
('33333333-3', 'Pedro', 'López', '1991-03-03', 'pedro.lopez@example.com', '2024-01-01', 1),
('44444444-4', 'Ana', 'Martínez', '1993-04-04', 'ana.martinez@example.com', '2024-01-01', 2),
('55555555-5', 'Luis', 'Rodríguez', '1994-05-05', 'luis.rodriguez@example.com', '2024-01-01', 1),
('66666666-6', 'Carmen', 'Hernández', '1995-06-06', 'carmen.hernandez@example.com', '2024-01-01', 2),
('77777777-7', 'Javier', 'Gutiérrez', '1996-07-07', 'javier.gutierrez@example.com', '2024-01-01', 3),
('88888888-8', 'Laura', 'Vásquez', '1997-08-08', 'laura.vasquez@example.com', '2024-01-01', 2),
('99999999-9', 'Roberto', 'Jiménez', '1998-09-09', 'roberto.jimenez@example.com', '2024-01-01', 1),
('10101010-0', 'Sofía', 'Castillo', '1999-10-10', 'sofia.castillo@example.com', '2024-01-01', 2),
('12121212-1', 'Ricardo', 'Cruz', '2000-11-11', 'ricardo.cruz@example.com', '2024-01-01', 1),
('13131313-2', 'Patricia', 'Ríos', '2001-12-12', 'patricia.rios@example.com', '2024-01-01', 2);

-- 5. Datos para la tabla Certificaciones
INSERT INTO Certificaciones (ID_Certificacion, Nombre_Certificacion, Institucion, Fecha_Obtencion) VALUES
('EPC001', 'Entrenador Personal Certificado', 'Instituto Nacional de Fitness', '2020-05-15'),
('NDP002', 'Nutricionista Deportivo', 'Universidad del Deporte', '2018-11-10'),
('YIN003', 'Yoga Instructor', 'Yoga Alliance', '2019-08-01'),
('PIC004', 'Pilates Certificado', 'Pilates Institute', '2021-01-20'),
('MUA005', 'Musculación Avanzada', 'Academia de Fitness', '2017-07-15'),
('CFC006', 'Certificación en CrossFit', 'CrossFit Inc.', '2022-03-10'),
('EFC007', 'Entrenador Funcional Certificado', 'Functional Training Academy', '2020-09-25'),
('ZIN008', 'Zumba Instructor', 'Zumba Fitness', '2021-05-15'),
('NAT009', 'Entrenador de Natación', 'Federación Nacional de Natación', '2019-04-30'),
('BOC010', 'Certificación en Boxeo', 'Boxing Association', '2022-02-18'),
('RIN011', 'Entrenador de Resistencia', 'Endurance Training Institute', '2023-01-12');


-- 6. Datos para la tabla Entrenadores
INSERT INTO Entrenadores (RUT_Entrenador, Nombre, Apellido, Fecha_Nacimiento, Correo_Electronico, Especialidad) VALUES 
('12121212-1', 'Eduardo', 'Rojas', '1980-01-10', 'eduardo.rojas@gmail.com', 'Entrenamiento Personal'),
('13131313-2', 'Patricia', 'Pérez', '1985-02-20', 'patricia.perez@hotmail.com', 'Yoga'),
('14141414-3', 'Felipe', 'Gutiérrez', '1990-03-30', 'felipe.gutierrez@yahoo.com', 'Musculación'),
('15151515-4', 'Claudia', 'Molina', '1992-04-15', 'claudia.molina@gmail.com', 'Pilates'),
('16161616-5', 'Javier', 'Silva', '1988-05-05', 'javier.silva@hotmail.com', 'Entrenamiento Funcional'),
('17171717-6', 'Valentina', 'Carrasco', '1994-06-20', 'valentina.carrasco@yahoo.com', 'Zumba'),
('18181818-7', 'Ignacio', 'Ríos', '1986-07-30', 'ignacio.rios@gmail.com', 'Natación'),
('19191919-8', 'Lucía', 'Morales', '1991-08-18', 'lucia.morales@hotmail.com', 'Entrenamiento de Fuerza'),
('20202020-9', 'Diego', 'Serrano', '1993-09-14', 'diego.serrano@yahoo.com', 'Boxeo'),
('21212121-0', 'Gabriela', 'Torres', '1995-10-25', 'gabriela.torres@gmail.com', 'CrossFit');

-- 7. Datos para la tabla Clases
INSERT INTO Clases (ID_Clase, Nombre_Clase, Nivel_Dificultad, Capacidad_Maxima) VALUES 
(1, 'Clase de Zumba', 'Fácil', 20),
(2, 'Entrenamiento Personal', 'Intermedio', 10),
(3, 'Yoga Avanzado', 'Difícil', 15),
(4, 'Pilates', 'Intermedio', 12),
(5, 'Natación para principiantes', 'Fácil', 8),
(6, 'Entrenamiento Funcional', 'Intermedio', 18),
(7, 'Musculación', 'Difícil', 25),
(8, 'Boxeo para todos', 'Fácil', 10),
(9, 'Clase de Fuerza', 'Intermedio', 15),
(10, 'CrossFit', 'Difícil', 20);

-- 8. Datos para la tabla Equipos
INSERT INTO Equipos (ID_Equipo, Tipo_Equipo, Marca) VALUES 
(1, 'Mancuernas', 'Marca A'),
(2, 'Bicicleta Estática', 'Marca B'),
(3, 'Cinta de Correr', 'Marca C'),
(4, 'Máquina de Pesas', 'Marca D'),
(5, 'Kettlebell', 'Marca E'),
(6, 'Colchoneta', 'Marca F'),
(7, 'Soga', 'Marca G'),
(8, 'Balón Suizo', 'Marca H'),
(9, 'Pesas Rusas', 'Marca I'),
(10, 'Bicicleta de Spinning', 'Marca J');

-- 9. Datos para la tabla Reservas 
INSERT INTO Reservas (ID_Reserva, ID_Equipo, ID_Sucursal, RUT_Miembro, Fecha_Reserva, Hora_Reserva) VALUES
(1, 1, 'SUC-01', '11111111-1', '2024-10-01', '10:00:00'),
(2, 2, 'SUC-01', '11111111-1', '2024-10-02', '11:00:00'),
(3, 3, 'SUC-02', '22222222-2', '2024-10-03', '09:00:00'),
(4, 4, 'SUC-02', '22222222-2', '2024-10-04', '12:00:00'),
(5, 5, 'SUC-02', '33333333-3', '2024-10-05', '14:00:00'),
(6, 6, 'SUC-03', '44444444-4', '2024-10-06', '15:00:00'),
(7, 7, 'SUC-03', '44444444-4', '2024-10-07', '16:00:00'),
(8, 8, 'SUC-04', '55555555-5', '2024-10-08', '17:00:00'),
(9, 9, 'SUC-04', '55555555-5', '2024-10-09', '18:00:00'),
(10, 10, 'SUC-05', '66666666-6', '2024-10-10', '19:00:00'),
(11, 1, 'SUC-06', '77777777-7', '2024-10-11', '10:00:00'),
(12, 2, 'SUC-07', '88888888-8', '2024-10-12', '11:00:00'),
(13, 3, 'SUC-07', '99999999-9', '2024-10-13', '09:00:00'),
(14, 4, 'SUC-08', '10101010-0', '2024-10-14', '12:00:00'),
(15, 5, 'SUC-09', '12121212-1', '2024-10-15', '14:00:00'),
(16, 6, 'SUC-10', '13131313-2', '2024-10-16', '15:00:00');

-- 10. Datos para la tabla Clase_Entrenador
INSERT INTO Clase_Entrenador (ID_Clase, RUT_Entrenador, ID_Sucursal, Dia_Semana, Hora_Inicio) VALUES 
(1, '17171717-6', 'SUC-01', 'Lunes', '10:00:00'),  
(1, '13131313-2', 'SUC-02', 'Martes', '11:00:00'), 
(2, '12121212-1', 'SUC-01', 'Miércoles', '12:00:00'), 
(3, '18181818-7', 'SUC-03', 'Jueves', '09:00:00'), 
(4, '15151515-4', 'SUC-01', 'Viernes', '14:00:00'), 
(5, '14141414-3', 'SUC-02', 'Sábado', '15:00:00'), 
(6, '16161616-5', 'SUC-03', 'Domingo', '11:00:00'), 
(7, '20202020-9', 'SUC-01', 'Lunes', '18:00:00'), 
(8, '19191919-8', 'SUC-02', 'Martes', '19:00:00'),  
(9, '17171717-6', 'SUC-03', 'Miércoles', '20:00:00'),  
(10, '21212121-0', 'SUC-01', 'Jueves', '09:00:00'), 
(1, '18181818-7', 'SUC-04', 'Lunes', '09:00:00'),   
(2, '15151515-4', 'SUC-04', 'Martes', '14:00:00'),  
(3, '14141414-3', 'SUC-04', 'Miércoles', '15:00:00'), 
(4, '16161616-5', 'SUC-04', 'Jueves', '11:00:00'),  
(5, '17171717-6', 'SUC-04', 'Viernes', '10:00:00'),  
(1, '21212121-0', 'SUC-05', 'Lunes', '09:00:00'),    
(2, '17171717-6', 'SUC-05', 'Martes', '14:00:00'),   
(3, '13131313-2', 'SUC-05', 'Miércoles', '15:00:00'), 
(4, '12121212-1', 'SUC-05', 'Jueves', '11:00:00'),  
(5, '16161616-5', 'SUC-05', 'Viernes', '10:00:00'), 
(6, '20202020-9', 'SUC-06', 'Sábado', '11:00:00'),  
(7, '19191919-8', 'SUC-06', 'Domingo', '12:00:00'), 
(1, '17171717-6', 'SUC-07', 'Lunes', '09:00:00'),  
(2, '13131313-2', 'SUC-07', 'Martes', '14:00:00'),  
(3, '12121212-1', 'SUC-08', 'Miércoles', '15:00:00'), 
(4, '18181818-7', 'SUC-08', 'Jueves', '11:00:00'),   
(5, '20202020-9', 'SUC-09', 'Viernes', '10:00:00'),  
(6, '17171717-6', 'SUC-09', 'Sábado', '11:00:00'),   
(7, '19191919-8', 'SUC-10', 'Domingo', '12:00:00'),  
(8, '21212121-0', 'SUC-10', 'Lunes', '09:00:00'),    
(9, '16161616-5', 'SUC-10', 'Martes', '14:00:00'),   
(10, '13131313-2', 'SUC-10', 'Miércoles', '15:00:00'); 


-- 11. Datos para la tabla Clase_Sucursal 
INSERT INTO Clase_Sucursal (ID_Clase, ID_Sucursal) VALUES 
(1, 'SUC-01'),
(1, 'SUC-02'),
(2, 'SUC-03'),
(3, 'SUC-04'),
(4, 'SUC-05'),
(5, 'SUC-06'),
(6, 'SUC-07'),
(7, 'SUC-08'),
(8, 'SUC-09'),
(9, 'SUC-10');

-- 12. Datos para la tabla Direcciones
INSERT INTO Direcciones (ID_Direccion, Direccion, ID_Ciudad) VALUES 
(1, 'Av. Los Libertadores 1200', 1),
(2, 'Calle Valparaíso 250', 2),
(3, 'Calle Maipú 60', 3),
(4, 'Av. Alemania 450', 4),
(5, 'Calle Centenario 25', 5),
(6, 'Av. La Paz 780', 6),
(7, 'Calle San Pedro 15', 7),
(8, 'Calle Suiza 90', 8),
(9, 'Av. El Sol 800', 9),
(10, 'Calle Mendoza 300', 10),
(11, 'Av. Los Andes 150', 1),
(12, 'Calle Santiago 350', 2),
(13, 'Calle Concepción 70', 3),
(14, 'Av. Temuco 500', 4),
(15, 'Calle Antofagasta 30', 5),
(16, 'Av. La Serena 780', 6),
(17, 'Calle Puerto Montt 15', 7),
(18, 'Calle Viña del Mar 90', 8),
(19, 'Av. Rancagua 800', 9),
(20, 'Calle Talca 300', 10);

-- 13. Datos para la tabla Miembro_Direccion
INSERT INTO Miembro_Direccion (RUT_Miembro, ID_Direccion) VALUES 
('11111111-1', 1),
('22222222-2', 2),
('33333333-3', 3),
('44444444-4', 4),
('55555555-5', 5),
('66666666-6', 6),
('77777777-7', 7),
('88888888-8', 8),
('99999999-9', 9),
('10101010-0', 10);

-- 14. Datos para la tabla Entrenador_Direccion
INSERT INTO Entrenador_Direccion (RUT_Entrenador, ID_Direccion) VALUES 
('12121212-1', 11),
('13131313-2', 12),
('14141414-3', 13),
('15151515-4', 14),
('16161616-5', 15),
('17171717-6', 16),
('18181818-7', 17),
('19191919-8', 18),
('20202020-9', 19),
('21212121-0', 20);

-- 15. Datos para la tabla Telefonos
INSERT INTO Telefonos (ID_Telefono, Numero) VALUES 
(1, '912345678'),
(2, '923456789'),
(3, '934567890'),
(4, '945678901'),
(5, '956789012'),
(6, '967890123'),
(7, '978901234'),
(8, '989012345'),
(9, '990123456'),
(10, '901234567'),
(11, '912345679'),
(12, '923456789'),
(13, '934567891'),
(14, '945678902'),
(15, '956789013'),
(16, '967890124'),
(17, '978901235'),
(18, '989012346'),
(19, '990123457'),
(20, '901234568');

-- 16. Datos para la tabla Miembro_Telefono
INSERT INTO Miembro_Telefono (RUT_Miembro, ID_Telefono) VALUES 
('11111111-1', 1),
('22222222-2', 2),
('33333333-3', 3),
('44444444-4', 4),
('55555555-5', 5),
('66666666-6', 6),
('77777777-7', 7),
('88888888-8', 8),
('99999999-9', 9),
('10101010-0', 10);

-- 17. Datos para la tabla Entrenador_Telefono
INSERT INTO Entrenador_Telefono (RUT_Entrenador, ID_Telefono) VALUES 
('12121212-1', 11),
('13131313-2', 12),
('14141414-3', 13),
('15151515-4', 14),
('16161616-5', 15),
('17171717-6', 16),
('18181818-7', 17),
('19191919-8', 18),
('20202020-9', 19),
('21212121-0', 20);

-- 18. Datos para la tabla Entrenador_Sucursal
INSERT INTO Entrenador_Sucursal (RUT_Entrenador, ID_Sucursal) VALUES 
('12121212-1', 'SUC-01'), 
('13131313-2', 'SUC-02'), 
('14141414-3', 'SUC-03'), 
('15151515-4', 'SUC-01'), 
('16161616-5', 'SUC-01'), 
('17171717-6', 'SUC-02'), 
('18181818-7', 'SUC-03'), 
('19191919-8', 'SUC-01'), 
('20202020-9', 'SUC-01'), 
('21212121-0', 'SUC-02');

-- 19. Datos para la tabla Miembro_Clase
INSERT INTO Miembro_Clase (RUT_Miembro, ID_Clase) VALUES
('11111111-1', 1),
('11111111-1', 2),
('22222222-2', 3),
('22222222-2', 4),
('22222222-2', 5),
('33333333-3', 6), 
('33333333-3', 7),
('44444444-4', 8),
('55555555-5', 9),
('66666666-6', 10), 
('66666666-6', 1),
('66666666-6', 2),
('66666666-6', 3),
('66666666-6', 4),
('77777777-7', 5), 
('88888888-8', 6), 
('88888888-8', 7),
('99999999-9', 8);

-- 20. Datos para la tabla Entrenador_Certificacion
INSERT INTO Entrenador_Certificacion (RUT_Entrenador, ID_Certificacion) VALUES
('12121212-1', 'EPC001'),
('12121212-1', 'NDP002'),
('13131313-2', 'YIN003'),
('13131313-2', 'PIC004'),
('14141414-3', 'MUA005'),
('15151515-4', 'CFC006'),
('16161616-5', 'EFC007'),
('17171717-6', 'ZIN008'),
('18181818-7', 'NAT009'),
('20202020-9', 'BOC010'),
('21212121-0', 'RIN011');