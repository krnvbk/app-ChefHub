/*BASE DE DATOS CHEFHUB*/
DROP DATABASE IF EXISTS pagina;
CREATE DATABASE pagina;
USE pagina;

CREATE TABLE usuarios (
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) UNIQUE NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL
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

CREATE TABLE comentarios (
    comentario_id INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT NOT NULL,
    fecha_comentario DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    usuario_id INT NOT NULL,
    receta_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (receta_id) REFERENCES recetas(receta_id)
);

CREATE TABLE valoraciones (
    valoracion_id INT AUTO_INCREMENT PRIMARY KEY,
    valor INT NOT NULL,
    usuario_id INT,
    receta_id INT,
    fecha_valoracion DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (receta_id) REFERENCES recetas(receta_id)
);

INSERT INTO usuarios VALUES (1, 'María Pérez', 'maria.perez@example.com', 'password123', '2024-06-21 10:00:00');
INSERT INTO usuarios VALUES (2, 'Chritine May', 'crissmay5@example.com', 'il0vec4ts', '2024-06-21 12:10:00');

INSERT INTO recetas VALUES (1, 'Torta de Tres Leches', 'Deliciosa torta esponjosa empapada en una mezcla de tres tipos de leche.', 90, 'imagen_torta_tres_leches.jpg', 'tortas', 1);
INSERT INTO ingredientes VALUES
(1, 'Harina', 'Secos', 'gramos'),
(2, 'Azúcar', 'Secos', 'gramos'),
(3, 'Huevos', 'Frescos', 'unidades'),
(4, 'Leche evaporada', 'Líquidos', 'mililitros'),
(5, 'Leche condensada', 'Líquidos', 'mililitros'),
(6, 'Crema de leche', 'Líquidos', 'mililitros'),
(7, 'Polvo de hornear', 'Secos', 'gramos'),
(8, 'Vainilla', 'Líquidos', 'mililitros');

INSERT INTO recetas_ingredientes VALUES
(1, 1, 1, 200.00, 'gramos'),  -- Harina
(2, 1, 2, 200.00, 'gramos'),  -- Azúcar
(3, 1, 3, 4.00, 'unidades'),  -- Huevos
(4, 1, 4, 200.00, 'mililitros'),  -- Leche evaporada
(5, 1, 5, 200.00, 'mililitros'),  -- Leche condensada
(6, 1, 6, 200.00, 'mililitros'),  -- Crema de leche
(7, 1, 7, 10.00, 'gramos'),  -- Polvo de hornear
(8, 1, 8, 5.00, 'mililitros');  -- Vainilla

INSERT INTO comentarios VALUES (1,'¡Esta torta es increíble! La recomiendo totalmente.', '2024-06-21 15:30:00', 2, 1);

INSERT INTO valoraciones VALUES (1, 5, 2, 1, '2024-06-21 16:45:00');
