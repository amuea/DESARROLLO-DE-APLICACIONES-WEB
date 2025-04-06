
-- Crear base de datos
CREATE DATABASE IF NOT EXISTS mi_app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE mi_app;

-- Tabla: usuarios
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Datos de prueba para usuarios
INSERT INTO usuarios (nombre, email, password) VALUES
('Ana Pérez', 'ana@example.com', '$pbkdf2-sha256$29000$hash_de_prueba'),
('Luis Gómez', 'luis@example.com', '$pbkdf2-sha256$29000$hash_de_prueba');

-- Tabla: productos
CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL
);

-- Datos de prueba para productos
INSERT INTO productos (nombre, precio, stock) VALUES
('Laptop Dell', 850.00, 5),
('Teclado Mecánico', 120.50, 15),
('Monitor LG', 300.00, 7);
