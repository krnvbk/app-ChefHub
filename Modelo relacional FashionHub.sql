
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE USUARIOS (
user_id INT UNSIGNED NOT NULL,
nombre VARCHAR(50) NOT NULL,
correo VARCHAR(100) NOT NULL,
direccion VARCHAR(100) DEFAULT NULL,
contraseña VARCHAR(50) NOT NULL,
fecha_registro DATE NOT NULL,
preferencias VARCHAR(50) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE Productos (
product_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY  NOT NULL,
nombre VARCHAR(100)  NOT NULL,
descripcion TEXT  NOT NULL,
categoria ENUM('hombres', 'mujeres', 'niños', 'accesorios')  NOT NULL,
precio DECIMAL(10, 2)  NOT NULL,
talla VARCHAR(10)  NOT NULL,
color VARCHAR(20)  NOT NULL,
marca VARCHAR(50)  NOT NULL,
stock INT  NOT NULL,
fecha_agregado DATE  NOT NULL
);

CREATE TABLE Recomendaciones (
	rec_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL NOT NULL,
	user_id INT NOT NULL,
	product_id INT NOT NULL,
	fecha_recomendacion DATE NOT NULL,
	FOREIGN KEY (user_id) REFERENCES Usuarios(user_id),
	FOREIGN KEY (product_id) REFERENCES Productos(product_id)
);

CREATE TABLE Productos_Promociones (
	promo_id INT NOT NULL,
	product_id INT NOT NULL,
	FOREIGN KEY (promo_id) REFERENCES Promociones(promo_id),
	FOREIGN KEY (product_id) REFERENCES Productos(product_id)
       );

CREATE TABLE Support_Chat (
chat_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
user_id INT NOT NULL,
mensaje TEXT NOT NULL,
fecha_mensaje TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
FOREIGN KEY (user_id) REFERENCES Usuarios(user_id)
       );
       
CREATE TABLE Envios (
shipment_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
order_id INT NOT NULL,
metodo_envio VARCHAR(50) NOT NULL,
costo_envio DECIMAL(10, 2) NOT NULL,
fecha_envio DATE NOT NULL,
fecha_entrega DATE NOT NULL,
FOREIGN KEY (order_id) REFERENCES Pedidos(order_id)
       );
       
