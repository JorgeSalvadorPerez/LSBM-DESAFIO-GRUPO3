
CREATE DATABASE IF NOT EXISTS Proyecto_Intermodular;

USE Proyecto_Intermodular;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    email VARCHAR(100) NOT NULL,

    CHECK (telefono REGEXP '^[0-9]{9}$'),
    CHECK (email LIKE '%@%')
);

CREATE TABLE Empresa (
    id_empresa INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cif VARCHAR(9) NOT NULL UNIQUE,
    telefono VARCHAR(9),
    email VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,    
    logo VARCHAR(255),


    CHECK (telefono REGEXP '^[0-9]{9}$'),
    CHECK (email LIKE '%@%')
);

