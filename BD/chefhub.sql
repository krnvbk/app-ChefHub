/*BASE DE DATOS CHEFHUB*/
DROP DATABASE IF EXISTS chefhub;
CREATE DATABASE chefhub;
USE chefhub;
CREATE TABLE usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
);

CREATE TABLE recetas (
    receta_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_postre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    tiempo_preparacion INT NOT NULL,
    imagen VARCHAR(255) NOT NULL,
    tipo_postre VARCHAR(50) NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

CREATE TABLE ingredientes (
    ingrediente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    medida_estandar VARCHAR(50) NOT NULL
);

CREATE TABLE recetas_ingredientes (
    receta_ingrediente_id INT AUTO_INCREMENT PRIMARY KEY,
    receta_id INT NOT NULL,
    ingrediente_id INT NOT NULL ,
    cantidad DECIMAL(10,2) NOT NULL,
    unidad VARCHAR(50) NOT NULL,
    FOREIGN KEY (receta_id) REFERENCES recetas(receta_id),
    FOREIGN KEY (ingrediente_id) REFERENCES ingredientes(ingrediente_id)
);

CREATE TABLE valoraciones (
    valoracion_id INT AUTO_INCREMENT PRIMARY KEY,
    valor INT NOT NULL,
    usuario_id INT,
    receta_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (receta_id) REFERENCES recetas(receta_id)
);

INSERT INTO usuarios VALUES (null, 'María Pérez', 'maria.perez@example.com', 'password123');
INSERT INTO usuarios VALUES (null, 'Chritine May', 'crissmay5@example.com', 'il0vec4ts');

INSERT INTO recetas VALUES (null, 'Torta de Tres Leches', 'Deliciosa torta esponjosa empapada en una mezcla de tres tipos de leche.', 90, 'imagen_torta_tres_leches.jpg', 'tortas', 1);
INSERT INTO ingredientes VALUES
(null, 'Harina', 'Secos', 'gramos'),
(null, 'Azúcar', 'Secos', 'gramos'),
(null, 'Huevos', 'Frescos', 'unidades'),
(null, 'Leche evaporada', 'Líquidos', 'mililitros'),
(null, 'Leche condensada', 'Líquidos', 'mililitros'),
(null, 'Crema de leche', 'Líquidos', 'mililitros'),
(null, 'Polvo de hornear', 'Secos', 'gramos'),
(null, 'Vainilla', 'Líquidos', 'mililitros');

INSERT INTO recetas_ingredientes VALUES
(null, 1, 1, 200.00, 'gramos'),  -- Harina
(null, 1, 2, 200.00, 'gramos'),  -- Azúcar
(null, 1, 3, 4.00, 'unidades'),  -- Huevos
(null, 1, 4, 200.00, 'mililitros'),  -- Leche evaporada
(null, 1, 5, 200.00, 'mililitros'),  -- Leche condensada
(null, 1, 6, 200.00, 'mililitros'),  -- Crema de leche
(null, 1, 7, 10.00, 'gramos'),  -- Polvo de hornear
(null, 1, 8, 5.00, 'mililitros');  -- Vainilla

INSERT INTO valoraciones VALUES (null, 5, 2, 1);
