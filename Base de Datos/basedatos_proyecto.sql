
CREATE DATABASE IF NOT EXISTS Proyecto_Intermodular;

USE Proyecto_Intermodular;

CREATE TABLE Empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    centro VARCHAR(100) NOT NULL,
    localidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(9),
    email VARCHAR(100) NOT NULL,
    inscripcion VARCHAR(100) NOT NULL,


    CHECK (telefono REGEXP '^[0-9]{9}$'),
    CHECK (email LIKE '%@%')
);
CREATE TABLE Visitante (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,

   
    CHECK (email LIKE '%@%')
);

