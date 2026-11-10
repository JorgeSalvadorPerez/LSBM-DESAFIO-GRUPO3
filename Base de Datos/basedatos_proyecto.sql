CREATE DATABASE IF NOT EXISTS Proyecto_Intermodular;

USE Proyecto_Intermodular;

DROP TABLE IF EXISTS Empresa;
CREATE TABLE Empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    centro VARCHAR(100) NOT NULL,
    localidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(9),
    email VARCHAR(100) NOT NULL,
    inscripcion VARCHAR(100) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    logo VARCHAR(255) NOT NULL,

    CHECK (telefono REGEXP '^[0-9]{9}$'),
    CHECK (email LIKE '%@%'),
    CHECK (logo REGEXP '\\.(jpg|jpeg|png)$')
);

DROP TABLE IF EXISTS Visitante;
CREATE TABLE Visitante (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    CHECK (telefono REGEXP '^[0-9]{9}$'),
    CHECK (email LIKE '%@%')
);