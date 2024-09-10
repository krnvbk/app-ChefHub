# app-ChefHub
## Descripción
El proyecto ChefHub se trata de una base de datos de recetas de postres ecuatorianos que tiene como objetivo que usuarios puedan descubrir recetas tradicionales de postres ecuatorianos. Esta base de datos será una herramienta útil tanto para entusiastas de la cocina como para aquellos interesados en la gastronomía ecuatoriana, proporcionando una colección diversa de recetas detalladas y auténticas.

## Funcionalidades Clave:
### 1. Recetas de Postres:
- Cada receta incluirá detalles específicos como __el nombre del postre, una descripción, lista de ingredientes con cantidades precisas, preparación detallada, tiempo de preparación.__
- Las recetas estarán categorizadas por tipos de postres ecuatorianos como __"postres fríos", "postres calientes"__.
### 2. Ingredientes y Medidas:
- La base de datos incluirá una tabla de ingredientes comunes utilizados en la cocina ecuatoriana, junto con sus medidas estándar y nombres en español.
### 3. Usuarios y Comunidad:
- Los usuarios podrán __registrarse__, __iniciar sesión__ y __contribuir__ al repositorio de recetas. Podrán subir nuevas recetas y valorar las recetas existentes.
### 4. Búsqueda Avanzada:
- Los usuarios podrán buscar recetas por nombre de postre, tipo de postre y etiquetas: (__"tradicional", "festivo", "familiar", "sin azúcar" y "sin gluten"__)
### 5. Valoración:
- Los usuarios podrán dejar valoraciones en las recetas, viendose reflejada en un promedio de valoraciones.

   
## Modelo Relacional

![image](https://github.com/krnvbk/app-ChefHub/assets/168390188/0e0020d1-84af-4674-ab27-4cc115c57f48)
   
## Tablas Principales

  1. Usuarios: Almacena información sobre los usuarios registrados.
  2. Recetas: Almacena información detallada sobre cada receta de postre ecuatoriano.
  3. Ingredientes: Contiene una lista de ingredientes comunes utilizados en las recetas.
  4. Recetas_Ingredientes: Relaciona cada receta con los ingredientes necesarios, especificando la cantidad requerida para cada uno.
  5. Valoraciones: Registra las valoraciones de los usuarios para cada receta.

NOTE: Podrá descargar el scrip con el modelo fisico. ![Modelo fisico](https://github.com/krnvbk/app-ChefHub/blob/main/BD/chefhub.sql)

## Desarrollo de propuestas 

### 1. Página de inicio
- Al ingresar al sitio web, los usuarios verán una página de bienvenida con opciones claras para **"Registrarse"** o **"Iniciar Sesión"**. 

### 2. Registro e Inicio de Sesión
#### Formulario de Registro:
- Los usuarios completarán un formulario con los siguientes campos: **Nombre, Correo Electrónico, Contraseña y Confirmación de Contraseña.
Validación de la entrada del usuario** (asegurar que el correo electrónico tenga el formato correcto y que las contraseñas coincidan).
- Al enviar, el backend verificará si el correo ya está registrado y, si todo es correcto, creará un nuevo usuario en la base de datos.
#### Formulario de Inicio de Sesión:
- Los usuarios ingresarán su correo electrónico y contraseña.

### 3. Menu Principal
Una vez autenticado, al usuario se le mostrará un menú con las siguientes opciones:
- **Mostrar recetas existentes**
    - Mostrará una lista de todas las recetas disponibles, con tiempo de preparación, y valoración promedio.
    - Opción para filtrar y ordenar las recetas por diferentes criterios (por ejemplo, más recientes, mejor valoradas).

- **Buscar receta:** Un formulario de búsqueda con filtros para buscar recetas por nombre, tipo de postre y etiquetas. Automáticamente, se presentan todas las coincidencias posibles, unicamente por nombre de postre.
    - **Visualizar receta**: Aparece luego de devolver todas las coincidencias. Muestra toda la información disponible de la receta que desee en el usuario, por medio de indicar su nombre.
      - Se mostrará una página detallada con la informacion correspondiente y la valoracion promedio.
    - **Dejar una valoración:** Aparece luego de visualizar una receta en especifico (emplea condicional, esta es un menú opcional). El usuario puede dejar una valoración (de 1 a 5 estrellas), de la cual posteriormente se calculará el promedio
 
- **Crear receta**: Un formulario que permitirá agregar una receta a la base de datos, incluyendo campos para:
  - Nombre del postre
  - Descripción
  - Preparación
  - Lista de ingredientes con cantidades precisas
  - Tiempo de preparación total

  Validación de datos antes de enviar al backend. Al guardar, la receta se añadirá a la base de datos y será visible en el listado de recetas.

- **Salir**: Simplemente se cerrará el programa con un amigable mensaje de despedida, así como los créditos (nombre del autor).

