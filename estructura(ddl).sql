
CREATE DATABASE IF NOT EXISTS veterinaria_mi_mejor_amigo;
USE veterinaria_mi_mejor_amigo;

CREATE TABLE dueno (
    cedula VARCHAR(15) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    direccion VARCHAR(200) NOT NULL
);


CREATE TABLE mascota (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    sexo CHAR(1) NOT NULL,
    vacunada BOOLEAN DEFAULT FALSE,
    cedula_dueno VARCHAR(15) NOT NULL,
    FOREIGN KEY (cedula_dueno) REFERENCES dueno(cedula)
);

CREATE TABLE servicio (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    precio_base DECIMAL(10,2) NOT NULL
);


CREATE TABLE visita (
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    id_mascota INT NOT NULL,
    id_servicio INT NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascota(id_mascota),
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio)
);

CREATE TABLE tratamiento (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    observaciones TEXT,
    id_visita INT NOT NULL,
    FOREIGN KEY (id_visita) REFERENCES visita(id_visita)
);