# app-ChefHub
## Introducción
Introducción
El proyecto ChefHub se trata de una Aplicación Web que servirá como un repositorio de recetas de postres ecuatorianos, la cual será una herramienta útil tanto para entusiastas de la cocina como para aquellos interesados en la gastronomía ecuatoriana, proporcionando una colección diversa de recetas detalladas y auténticas. Además, ChefHub busca rescatar y preservar el patrimonio culinario del Ecuador, fomentando la transmisión de conocimientos gastronómicos entre generaciones y contribuyendo a la difusión de la identidad cultural del país.

### Propósito
El propósito principal de ChefHub es ofrecer una plataforma digital accesible y organizada que permita a los usuarios explorar, aprender y compartir recetas tradicionales de postres ecuatorianos. Al centralizar este conocimiento en un solo espacio, se pretende no solo facilitar el acceso a estas recetas, sino también incentivar su preparación, consumo y valoración, fortaleciendo el vínculo cultural entre las personas y su patrimonio gastronómico.

### Objetivos
- **Preservar recetas tradicionales:** Documentar y digitalizar recetas auténticas de postres ecuatorianos a través de la creación de un repositorio digital que permita recopilar recetas de diversas regiones del país, garantizando la permanencia de estas mismas y así evitando su pérdida con el tiempo.
- **Facilitar el acceso a la información:** Proporcionar una plataforma intuitiva y fácil de usar donde cualquier usuario pueda acceder rápidamente a las recetas. Esto incluye el diseño de una interfaz clara y amigable, con herramientas de búsqueda avanzada y filtros por tipo de postre y criterios como "mejor valoradas".
- **Fomentar el aprendizaje culinario:** Ofrecer instrucciones claras y detalladas que faciliten la preparación de los postres. Cada receta incluirá listas de ingredientes precisas, tiempos de preparación estimados, y procedimientos explicados paso a paso; con la finalidad de que el contenido sea fácil de entender y a la vez sea intuitivo.
- **Promover la interacción entre usuarios:** Fomentar la creación de una comunidad activa donde los usuarios puedan compartir recetas familiares y variaciones de recetas tradicionales, fortaleciendo así el intercambio de conocimientos culinarios.

## Contexto del Problema
La gastronomía ecuatoriana, rica en tradición, carece de un acceso centralizado a recetas de postres, lo que dificulta que tanto locales como extranjeros las descubran y preparen. Esto resalta la necesidad de una plataforma digital que permita a los usuarios descubrir, compartir y preservar recetas tradicionales, con un enfoque en la autenticidad. A pesar del interés en la cocina ecuatoriana, el acceso a recetas detalladas y valoradas es limitado. El reto es crear una plataforma fácil de usar, que permita a los usuarios registrar, valorar y gestionar recetas, con funciones avanzadas de búsqueda.

## Analisis de requerimiento
Busca ser una plataforma única que recopile recetas de postres ecuatorianos, permitiendo a los usuarios descubrir, compartir y valorar recetas tradicionales. Para lograr esto, es esencial definir con claridad todas las necesidades del sistema, cómo se gestionarán los datos, y cuál será la lógica de negocio. A continuación, se presenta un análisis detallado, abarcando tanto las necesidades funcionales como no funcionales, asegurando que todos los aspectos del sistema estén cubiertos de manera comprensible y humanizada.

## Funcionalidades Clave:
### 1. Recetas de Postres:
- Cada receta incluirá detalles específicos como __el nombre del postre, tipo de postre una descripción, lista de ingredientes con cantidades precisas, preparación detallada, tiempo de preparación.__
- Las recetas estarán categorizadas por tipos de postres ecuatorianos como __"postres fríos", "postres calientes"__.
### 2. Ingredientes y Medidas:
- La base de datos incluirá una tabla de ingredientes comunes utilizados en la cocina ecuatoriana, junto con sus medidas estándar y nombres en español.
### 3. Usuarios y Comunidad:
- Los usuarios podrán __registrarse__, __iniciar sesión__ y __contribuir__ al repositorio de recetas. Podrán subir nuevas recetas y valorar las recetas existentes.
### 4. Búsqueda Avanzada:
- Los usuarios podrán buscar recetas por nombre de postre o tipo de postre.
### 5. Valoración:
- Los usuarios podrán dejar valoraciones en las recetas, viendose reflejada en un promedio de valoraciones.

   
## Modelo Relacional

![image](img/modelorelacional.jpg)
   
## Tablas Principales

  1. Usuarios: Almacena información sobre los usuarios registrados.
  2. Recetas: Almacena información detallada sobre cada receta de postre ecuatoriano.
  3. Ingredientes: Contiene una lista de ingredientes comunes utilizados en las recetas.
  4. Recetas_Ingredientes: Relaciona cada receta con los ingredientes necesarios, especificando la cantidad requerida para cada uno.
  5. Valoraciones: Registra las valoraciones de los usuarios para cada receta.

NOTE: Podrá descargar el scrip con el modelo fisico. ![Modelo fisico](https://github.com/krnvbk/app-ChefHub/blob/main/BD/chefhub.sql)

## Diseño del Sistema

### 1. Menú de Inicio
- Al iniciar el programa, los usuarios verán un saludo bienvenida con opciones claras para **"Registrarse"** o **"Iniciar Sesión"**. 

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
    - Opción para filtrar y ordenar las recetas por diferentes criterios (**más recientes** y  **mejor valoradas**).

- **Buscar receta:** Un formulario de búsqueda con filtros para buscar recetas por nombre o tipo de postre. Automáticamente, se presentan todas las coincidencias posibles, unicamente por nombre de postre.
    - **Visualizar receta**: Aparece luego de devolver todas las coincidencias. Muestra toda la información disponible de la receta que desee en el usuario, por medio de indicar su número asignado.
      - Se mostrará una página detallada con la informacion correspondiente y la valoracion promedio.
    - **Dejar una valoración:** Aparece luego de visualizar una receta en especifico (emplea condicional, esto es opcional). El usuario puede dejar una valoración (de 1 a 5 estrellas), de la cual posteriormente se calculará el promedio
 
- **Crear receta**: Un formulario que permitirá agregar una receta a la base de datos, incluyendo campos para:
  - Nombre del postre
  - Tipo de postre
  - Etiqueta
  - Descripción
  - Preparación
  - Lista de ingredientes con cantidades precisas
  - Tiempo de preparación total

  Validación de datos antes de enviar al backend. Al guardar, la receta se añadirá a la base de datos y será visible en el listado de recetas.

- **Salir**: Simplemente se cerrará el programa con un amigable mensaje de despedida, así como los créditos (nombre del autor).

