# app-ChefHub
## Descripción
El proyecto ChefHub se trata de una base de datos de recetas de postres ecuatorianos que tiene como objetivo crear un sitio web donde los usuarios puedan descubrir, compartir y explorar recetas tradicionales de postres ecuatorianos. Esta base de datos será una herramienta útil tanto para entusiastas de la cocina como para aquellos interesados en la gastronomía ecuatoriana, proporcionando una colección diversa de recetas detalladas y auténticas.

## Funcionalidades Clave:
### 1. Recetas de Postres:
- Cada receta incluirá detalles específicos como __el nombre del postre, una descripción, lista de ingredientes con cantidades precisas, pasos de preparación detallados, tiempo de preparación y una imagen del postre terminado.__
- Las recetas estarán categorizadas por tipos de postres ecuatorianos como __"tortas", "dulces", "panes", "bizcochos", "aderezos".__
### 2. Ingredientes y Medidas:
- La base de datos incluirá una tabla de ingredientes comunes utilizados en la cocina ecuatoriana, junto con sus medidas estándar y nombres en español.
### 3. Usuarios y Comunidad:
- Los usuarios podrán __registrarse__, __iniciar sesión__ y __contribuir__ al repositorio de recetas. Podrán subir nuevas recetas, comentar y valorar las recetas existentes, y seguir a otros usuarios.
### 4. Búsqueda Avanzada:
- Los usuarios podrán buscar recetas por nombre de postre, tipo de postre (__"postres fríos", "postres calientes"__), ingredientes principales, y etiquetas: __"tradicional", "festivo", "familiar", "sin azúcar" y "sin gluten"__)
### 5. Interacción Social:
- Se permitirá a los usuarios compartir recetas en Facebook e Instagram, y seguir a otros usuarios para recibir actualizaciones sobre nuevas recetas y comentarios.
### 6. Valoración y Comentarios:
- Los usuarios podrán dejar comentarios y valoraciones en las recetas, proporcionando retroalimentación y recomendaciones basadas en su experiencia.

   
## Modelo Relacional

![image](https://github.com/krnvbk/app-ChefHub/assets/168390188/0e0020d1-84af-4674-ab27-4cc115c57f48)
   
## Tablas Principales

  1. Usuarios: Almacena información sobre los usuarios registrados.
  2. Recetas: Almacena información detallada sobre cada receta de postre ecuatoriano.
  3. Ingredientes: Contiene una lista de ingredientes comunes utilizados en las recetas.
  4. Recetas_Ingredientes: Relaciona cada receta con los ingredientes necesarios, especificando la cantidad requerida para cada uno.
  5. Comentarios: Almacena comentarios de los usuarios en las recetas.
  6. Valoraciones: Registra las valoraciones de los usuarios para cada receta.

NOTE: Podrá descargar el scrip con el modelo fisico. ![Modelo fisico](https://github.com/krnvbk/app-ChefHub/blob/main/BD/chefhub.sql)

## Desarrollo de propuestas 

### 1. Página de inicio
- Al ingresar al sitio web, los usuarios verán una página de bienvenida con opciones claras para **"Registrarse"** o **"Iniciar Sesión"**. 
- La página también incluirá una breve descripción de ChefHub y sus funcionalidades.

### 2. Registro e Inicio de Sesión
#### Formulario de Registro:
- Los usuarios completarán un formulario con los siguientes campos: **Nombre, Correo Electrónico, Contraseña y Confirmación de Contraseña.
Validación de la entrada del usuario** (asegurar que el correo electrónico tenga el formato correcto y que las contraseñas coincidan).
- Al enviar, el backend verificará si el correo ya está registrado y, si todo es correcto, creará un nuevo usuario en la base de datos.
#### Formulario de Inicio de Sesión:
- Los usuarios ingresarán su correo electrónico y contraseña.

### 3. Página Principal 
Una vez autenticado, al usuario se le mostrará:
- **Recetas Destacadas:** Una selección de recetas destacadas o populares.
- **Opciones de Navegación:** Botones para ver todas las recetas, mis recetas, y opciones de perfil.
- **Búsqueda Avanzada:** Un formulario de búsqueda con filtros para buscar recetas por nombre, tipo de postre, ingredientes y etiquetas.

### 4. Listado de Recetas
- Mostrará una lista de todas las recetas disponibles, con una breve descripción, imagen, tiempo de preparación, y valoración promedio.
- Opción para filtrar y ordenar las recetas por diferentes criterios (por ejemplo, más recientes, mejor valoradas).

### 5. Detalles de Recetas
Al hacer clic en una receta, se mostrará una página detallada con:
- Nombre del postre
- Imagen del postre
- Descripción detallada
- Lista de ingredientes con cantidades precisas
- Pasos de preparación detallados
- Tiempo de preparación total
- Valoraciones y comentarios de otros usuarios
- Botones para valorar y comentar

### 6. Búsqueda Avanzada
- Formulario de Búsqueda:Campo de texto para buscar por nombre de postre.
- Filtros desplegables para tipo de postre (tortas, dulces, panes, etc.), etiquetas (tradicional, festivo, sin gluten, etc.), y tiempo de preparación.
- Resultados mostrados en tiempo real conforme se aplican los filtros.

### 7. Valoración y Comentarios:
- Los usuarios pueden dejar una valoración (de 1 a 5 estrellas) y escribir un comentario.
- Los comentarios se mostrarán en orden cronológico, con la opción de responder a comentarios existentes.

### 8. Creación y Gestión de Recetas
- Formulario para agregar una nueva receta, incluyendo campos para: Nombre del postre, Descripción, Ingredientes (con cantidades y medidas), Pasos de preparación, Tipo de postre (categoría), Tiempo de preparación y Subir imagen.
Validación de datos antes de enviar al backend.
- Al guardar, la receta se añadirá a la base de datos y será visible en el listado de recetas.

### 9. Editar y Eliminar Recetas:
- Los usuarios pueden editar o eliminar sus propias recetas.
Botones de "Editar" y "Eliminar" estarán disponibles en la página de detalle de cada receta del usuario.
- La edición abrirá un formulario prellenado con los datos actuales de la receta, permitiendo modificaciones.

### 10. Perfil de Usuario
#### Página de Perfil:
- Muestra la información del usuario (Nombre, Correo Electrónico).
- Lista de recetas creadas por el usuario.
- Opciones para editar perfil y cambiar contraseña.
- Historial de comentarios y valoraciones.

### 11. Interacción Social
- Compartir en Redes Sociales: Botones para compartir recetas en Facebook e Instagram.
