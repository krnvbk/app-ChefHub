# app-ChefHub
## Descripción
El proyecto ChefHub se trata de una base de datos de recetas de postres ecuatorianos que tiene como objetivo crear un sitio web donde los usuarios puedan descubrir, compartir y explorar recetas tradicionales de postres ecuatorianos. Esta base de datos será una herramienta útil tanto para entusiastas de la cocina como para aquellos interesados en la gastronomía ecuatoriana, proporcionando una colección diversa de recetas detalladas y auténticas.

## Funcionalidades Clave:
### 1. Recetas de Postres:
- Cada receta incluirá detalles específicos como __el nombre del postre, una descripción, lista de ingredientes con cantidades precisas, pasos de preparación detallados, tiempo de preparación y una imagen del postre terminado.__
- Las recetas estarán categorizadas por tipos de postres ecuatorianos como __"tortas", "dulces", "panes", "bizcochos", "aderezos".__
### Ingredientes y Medidas:
- La base de datos incluirá una tabla de ingredientes comunes utilizados en la cocina ecuatoriana, junto con sus medidas estándar y nombres en español.
### Usuarios y Comunidad:
- Los usuarios podrán __registrarse__, __iniciar sesión__ y __contribuir__ al repositorio de recetas. Podrán subir nuevas recetas, comentar y valorar las recetas existentes, y seguir a otros usuarios.
### Búsqueda Avanzada:
- Los usuarios podrán buscar recetas por nombre de postre, tipo de postre (__"postres fríos", "postres calientes"__), ingredientes principales, y etiquetas: "tradicional", "festivo", "familiar", "sin azúcar" y "sin gluten"__)
### Interacción Social:
- Se permitirá a los usuarios compartir recetas en Facebook e Instagram, y seguir a otros usuarios para recibir actualizaciones sobre nuevas recetas y comentarios.
### Valoración y Comentarios:
- Los usuarios podrán dejar comentarios y valoraciones en las recetas, proporcionando retroalimentación y recomendaciones basadas en su experiencia.


## Modelo Relacional
### Tabla de Usuarios
Almacena información sobre los usuarios registrados.
  1. usuario_id (INT UNSIGNED, PK, AUTO_INCREMENT): Identificador único del usuario.
  2. nombre (VARCHAR(100)): Nombre del usuario.
  3. correo_elect (VARCHAR(100), UNIQUE): Correo electrónico del usuario.
  4. contrasena (VARCHAR(255)): Contraseña encriptada del usuario.
  5. fecha_registro (DATETIME): Fecha de registro del usuario.

### Tabla de Recetas
Almacena información detallada sobre cada receta de postre ecuatoriano.
  1. receta_id (INT, PK, AUTO_INCREMENT): Identificador único de la receta.
  2. nombre_postre (VARCHAR(100)): Nombre del postre.
  3. descripcion (TEXT): Descripción de la receta.
  4. tiempo_preparacion (INT): Tiempo de preparación en minutos.
  5. imagen (VARCHAR(255)): URL de la imagen del postre.
  6. tipo_postre (VARCHAR(50)): Tipo de postre (tortas, dulces, panes, bizcochos, aderezos).
  7. usuario_id (INT, FK): Referencia al usuario que creó la receta.

### Tabla de Ingredientes
Contiene una lista de ingredientes comunes utilizados en las recetas.
  1. ingrediente_id (INT, PK, AUTO_INCREMENT): Identificador único del ingrediente.
  2. nombre (VARCHAR(100)): Nombre del ingrediente.
  3. categoria (VARCHAR(50)): Categoría del ingrediente.
  4. medida_estandar (VARCHAR(50)): Unidad de medida estándar.

### Tabla de Recetas_Ingredientes
Relaciona cada receta con los ingredientes necesarios, especificando la cantidad requerida para cada uno.
  1. receta_ingrediente_id (INT, PK, AUTO_INCREMENT): Identificador único de la relación.
  2. receta_id (INT, FK): Referencia a la receta.
  3. ingrediente_id (INT, FK): Referencia al ingrediente.
  4. cantidad (DECIMAL(10,2)): Cantidad requerida del ingrediente.
  5. unidad (VARCHAR(50)): Unidad de medida de la cantidad.

### Tabla de Comentarios
Almacena comentarios de los usuarios en las recetas.
  1. comentario_id (INT, PK, AUTO_INCREMENT): Identificador único del comentario.
  2. texto (TEXT): Texto del comentario.
  3. fecha_comentario (DATETIME): Fecha en que se realizó el comentario.
  4. usuario_id (INT, FK): Referencia al usuario que hizo el comentario.
  5. receta_id (INT, FK): Referencia a la receta comentada.

### Tabla de Valoraciones
Registra las valoraciones de los usuarios para cada receta.
  1. valoracion_id (INT, PK, AUTO_INCREMENT): Identificador único de la valoración.
  2. valor (INT): Valor de la valoración (por ejemplo, de 1 a 5).
  3. usuario_id (INT, FK): Referencia al usuario que hizo la valoración.
  4. receta_id (INT, FK): Referencia a la receta valorada.
  5. fecha_valoracion (DATETIME): Fecha en que se realizó la valoración.


## Relaciones entre Tablas
Claro, a continuación se detallan los tipos de relaciones entre las tablas creadas, especificando si son de uno a uno (1:1), de uno a varios (1:N) o de varios a uno (N:1):

### Relación entre Usuarios y Recetas
**Tipo:** 1:N (uno a varios)
- Un usuario puede crear múltiples recetas.
- Un receta es creada por un único usuario.
- Clave foránea: `usuario_id` en `Recetas` que referencia a `usuario_id` en `Usuarios`.

### Relación entre Recetas y Recetas_Ingredientes
**Tipo:** 1:N (uno a varios)
- Una receta puede tener múltiples registros en `Recetas_Ingredientes` (cada uno representando un ingrediente con su cantidad).
- Un registro en `Recetas_Ingredientes` pertenece a una única receta.
- Clave foránea: `receta_id` en `Recetas_Ingredientes` que referencia a `receta_id` en `Recetas`.

### Relación entre Ingredientes y Recetas_Ingredientes
**Tipo:** 1:N (uno a varios)
- Un ingrediente puede estar presente en múltiples registros en `Recetas_Ingredientes`.
- Un registro en `Recetas_Ingredientes` pertenece a un único ingrediente.
- Clave foránea: `ingrediente_id` en `Recetas_Ingredientes` que referencia a `ingrediente_id` en `Ingredientes`.

### Relación entre Usuarios y Comentarios
**Tipo:** 1:N (uno a varios)
- Un usuario puede hacer múltiples comentarios.
- Un comentario es hecho por un único usuario.
- Clave foránea: `usuario_id` en `Comentarios` que referencia a `usuario_id` en `Usuarios`.

### Relación entre Recetas y Comentarios
**Tipo:** 1:N (uno a varios)
- Una receta puede tener múltiples comentarios.
- Un comentario pertenece a una única receta.
- Clave foránea: `receta_id` en `Comentarios` que referencia a `receta_id` en `Recetas`.

### Relación entre Usuarios y Valoraciones
**Tipo:** 1:N (uno a varios)
- Un usuario puede hacer múltiples valoraciones.
- Una valoración es hecha por un único usuario.
- Clave foránea: `usuario_id` en `Valoraciones` que referencia a `usuario_id` en `Usuarios`.

### Relación entre Recetas y Valoraciones
**Tipo:** 1:N (uno a varios)
- Una receta puede tener múltiples valoraciones.
- Una valoración pertenece a una única receta.
- Clave foránea: `receta_id` en `Valoraciones` que referencia a `receta_id` en `Recetas`.


# Desarrollo de propuestas
Escribir sobre la solución a realizar
