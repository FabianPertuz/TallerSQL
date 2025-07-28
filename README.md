# TallerSQL📌 Descripción del Proyecto
Este repositorio contiene el sistema de base de datos para la veterinaria "Mi Mejor Amigo", diseñado para gestionar eficientemente la información de dueños, mascotas, servicios, visitas y tratamientos médicos.

🗃️ Estructura de Archivos
text
veterinaria-mi-mejor-amigo/
│
├── estructura.sql       # Script DDL con la creación de tablas
├── datos.sql           # Script DML con datos de ejemplo
├── consultas.sql       # 15 consultas SQL demostrativas
└── README.md           # Documentación del proyecto
🛠️ Descripción Técnica del Código
1. Estructura de la Base de Datos (estructura.sql)
El diseño relacional consta de 5 tablas principales:

Diagram
Code

Tablas principales:

dueno: Almacena información personal de los dueños (cédula, nombre, teléfono, dirección)

mascota: Registra datos de las mascotas con FK al dueño

servicio: Catálogo de servicios ofrecidos por la veterinaria

visita: Relaciona mascotas con servicios en fechas específicas

tratamiento: Medicamentos o procedimientos asignados en visitas

2. Datos de Ejemplo (datos.sql)
Contiene información demostrativa para probar el sistema:

5 dueños con sus datos personales

10 mascotas de diferentes especies y razas

5 servicios veterinarios con sus precios

10 registros de visitas realizadas

5 tratamientos médicos asignados

Ejemplo de inserción:

sql
INSERT INTO mascota (nombre, especie, raza, edad, sexo, vacunada, cedula_dueno) VALUES
('Max', 'Perro', 'Labrador', 3, 'M', TRUE, '123456789');
3. Consultas SQL (consultas.sql)
El archivo contiene 15 consultas organizadas por categorías:

🔍 Consultas Básicas
sql
-- Consulta con alias
SELECT cedula AS ID, nombre_completo AS Nombre FROM dueno;
📊 Consultas Agregadas
sql
-- Conteo de mascotas por dueño
SELECT d.nombre_completo, COUNT(m.id_mascota) AS total_mascotas
FROM dueno d LEFT JOIN mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula;
🔗 Consultas con Joins
sql
-- Historial completo de visitas
SELECT m.nombre AS mascota, s.nombre AS servicio, v.fecha
FROM visita v
JOIN mascota m ON v.id_mascota = m.id_mascota
JOIN servicio s ON v.id_servicio = s.id_servicio;
🧩 Funciones Especiales
sql
-- Clasificación de mascotas por edad
SELECT nombre, IF(edad < 2, 'Cachorro', 'Adulto') AS categoria
FROM mascota;
💻 Cómo Usar el Sistema
Ejecutar estructura.sql para crear la base de datos

Ejecutar datos.sql para poblar las tablas

Explorar las consultas en consultas.sql

