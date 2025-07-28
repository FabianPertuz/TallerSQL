
CREATE TABLE mascotas_vacunadas AS
SELECT id_mascota, nombre, especie, raza, edad
FROM mascota
WHERE vacunada = TRUE;


    cedula AS ID,
    nombre_completo AS Nombre,
    telefono AS Tel,
    direccion AS Dir
FROM dueno;


SELECT 
    especie AS Tipo_Mascota,
    AVG(edad) AS Edad_Promedio
FROM mascota
GROUP BY especie;


SELECT 
    d.nombre_completo AS Dueño,
    COUNT(m.id_mascota) AS Cantidad_Mascotas
FROM dueno d
LEFT JOIN mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula;

SELECT 
    s.nombre AS Servicio,
    COUNT(v.id_visita) AS Veces_Solicitado,
    SUM(s.precio_base) AS Ingresos_Generados
FROM servicio s
JOIN visita v ON s.id_servicio = v.id_servicio
GROUP BY s.id_servicio
ORDER BY Veces_Solicitado DESC;


SELECT 
    CONCAT(nombre, ' - ', especie, ' (', raza, ')') AS Mascota,
    CONCAT('Edad: ', edad, ' años') AS Edad
FROM mascota;


SELECT 
    UPPER(nombre) AS Nombre_Mayusculas,
    LOWER(raza) AS Raza_Minusculas
FROM mascota;


SELECT 
    nombre_completo AS Nombre,
    LENGTH(nombre_completo) AS Longitud_Nombre
FROM dueno;


SELECT 
    nombre_completo AS Nombre,
    CONCAT(
        SUBSTRING(nombre_completo, 1, 1),
        SUBSTRING(nombre_completo, LOCATE(' ', nombre_completo) + 1, 1)
    ) AS Iniciales
FROM dueno;


SELECT 
    TRIM(nombre) AS Nombre_Mascota
FROM mascota;


SELECT 
    ROUND(AVG(precio_base), 2) AS Precio_Promedio_Servicios
FROM servicio;


SELECT 
    nombre,
    edad,
    IF(edad < 2, 'Cachorro', IF(edad >= 5, 'Adulto Mayor', 'Adulto')) AS Categoria_Edad
FROM mascota;

SELECT 
    m.nombre AS Mascota,
    s.nombre AS Servicio,
    v.fecha AS Fecha_Visita,
    s.precio_base AS Precio
FROM visita v
JOIN mascota m ON v.id_mascota = m.id_mascota
JOIN servicio s ON v.id_servicio = s.id_servicio
ORDER BY v.fecha DESC;


SELECT 
    d.nombre_completo AS Dueño,
    COUNT(m.id_mascota) AS Cantidad_Mascotas
FROM dueno d
JOIN mascota m ON d.cedula = m.cedula_dueno
GROUP BY d.cedula
HAVING COUNT(m.id_mascota) > 1;


SELECT 
    s.nombre AS Servicio,
    COUNT(v.id_visita) AS Total_Visitas,
    MIN(v.fecha) AS Primera_Visita,
    MAX(v.fecha) AS Ultima_Visita,
    SUM(s.precio_base) AS Ingresos_Totales
FROM servicio s
LEFT JOIN visita v ON s.id_servicio = v.id_servicio
GROUP BY s.id_servicio;