
INSERT INTO dueno (cedula, nombre_completo, telefono, direccion) VALUES
('123456789', 'María González', '3101234567', 'Calle 123 #45-67'),
('987654321', 'Carlos Pérez', '3209876543', 'Avenida 8 #12-34'),
('456789123', 'Ana Rodríguez', '3154567890', 'Carrera 56 #78-90'),
('789123456', 'Pedro Martínez', '3178912345', 'Diagonal 34 #56-78'),
('321654987', 'Luisa Fernández', '3183216549', 'Transversal 12 #34-56');


INSERT INTO mascota (nombre, especie, raza, edad, sexo, vacunada, cedula_dueno) VALUES
('Max', 'Perro', 'Labrador', 3, 'M', TRUE, '123456789'),
('Luna', 'Gato', 'Siamés', 2, 'H', TRUE, '123456789'),
('Bobby', 'Perro', 'Bulldog', 5, 'M', FALSE, '987654321'),
('Misi', 'Gato', 'Persa', 1, 'H', TRUE, '456789123'),
('Rocky', 'Perro', 'Pastor Alemán', 4, 'M', TRUE, '789123456'),
('Milo', 'Perro', 'Chihuahua', 2, 'M', FALSE, '321654987'),
('Nina', 'Gato', 'Angora', 3, 'H', TRUE, '321654987'),
('Toby', 'Perro', 'Golden Retriever', 1, 'M', TRUE, '987654321'),
('Lola', 'Perro', 'Poodle', 6, 'H', FALSE, '456789123'),
('Simba', 'Gato', 'Mestizo', 2, 'M', TRUE, '789123456');


INSERT INTO servicio (nombre, descripcion, precio_base) VALUES
('Consulta médica', 'Revisión general de la mascota', 50000.00),
('Vacunación', 'Aplicación de vacunas según esquema', 80000.00),
('Baño', 'Baño completo con shampoo especial', 40000.00),
('Desparasitación', 'Aplicación de antiparasitarios', 45000.00),
('Corte de uñas', 'Corte y limado de uñas', 25000.00);


INSERT INTO visita (fecha, id_mascota, id_servicio) VALUES
('2025-01-15 10:00:00', 1, 1),
('2025-01-15 11:30:00', 2, 3),
('2025-01-16 09:00:00', 3, 2),
('2025-01-17 14:00:00', 4, 1),
('2025-01-18 16:30:00', 5, 4),
('2025-01-19 10:00:00', 6, 3),
('2025-01-20 11:00:00', 7, 5),
('2025-01-21 15:00:00', 8, 2),
('2025-01-22 09:30:00', 9, 1),
('2025-01-23 13:00:00', 10, 3);

INSERT INTO tratamiento (nombre, observaciones, id_visita) VALUES
('Antibiótico', 'Aplicar cada 8 horas por 7 días', 1),
('Vitaminas', '1 tableta diaria por 30 días', 3),
('Shampoo medicado', 'Usar cada 3 días por 2 semanas', 2),
('Antiparasitario', 'Repetir en 3 meses', 5),
('Gotas óticas', 'Aplicar 2 gotas en cada oído por 5 días', 4);