DROP DATABASE IF EXISTS ChefHubBD;
DROP USER IF EXISTS 'mainchefhub'@'localhost';
CREATE DATABASE ChefHubBD CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'mainchefhub'@'localhost' IDENTIFIED BY 'Laboratorio1*2024';
GRANT ALL PRIVILEGES ON ChefHubBD.* TO 'mainchefhub'@'localhost';
FLUSH PRIVILEGES;