# app-ChefHub
## Introducción
Introducción
El proyecto ChefHub se trata de una Aplicación Web que servirá como un repositorio de recetas de postres ecuatorianos, la cual será una herramienta útil tanto para entusiastas de la cocina como para aquellos interesados en la gastronomía ecuatoriana, proporcionando una colección diversa de recetas detalladas. Además, ChefHub busca rescatar y preservar el patrimonio culinario del Ecuador, fomentando la transmisión de conocimientos gastronómicos entre generaciones y contribuyendo a la difusión de la identidad cultural del país.

### Propósito
El propósito principal de ChefHub es ofrecer una plataforma digital accesible y organizada que permita a los usuarios explorar y aprender recetas tradicionales de postres ecuatorianos. Al centralizar este conocimiento en un solo espacio, se pretende no solo facilitar el acceso a estas recetas, sino también incentivar su preparación y consumo fortaleciendo el vínculo cultural entre las personas y su patrimonio gastronómico.

### Objetivos
- **Promover la gastronomía ecuatoriana y mundial:** Crear una plataforma que difunda recetas tradicionales y contemporáneas, poniendo especial énfasis en los postres ecuatorianos, para preservar y compartir la riqueza cultural culinaria.

- **Facilitar el acceso a recetas organizadas:** Proveer una herramienta digital que permita a los usuarios explorar, guardar y organizar recetas de manera eficiente y personalizada.

- **Fomentar la creatividad culinaria:** Brindar un espacio donde los usuarios puedan compartir sus propias recetas, intercambiar ideas y aprender nuevas técnicas de cocina.

- **Ofrecer una experiencia de usuario intuitiva y atractiva:** Desarrollar una aplicación con una interfaz amigable que simplifique la navegación, haciendo que explorar y cocinar sea más accesible para todos.
  

## Contexto del Problema
La gastronomía ecuatoriana, conocida por su riqueza cultural y diversidad, carece de una plataforma digital centralizada que recopile y preserve recetas auténticas de postres tradicionales. Aunque el patrimonio inmaterial, como las recetas culinarias, es crucial para la identidad cultural, la UNESCO advierte que su transmisión oral y la falta de documentación adecuada ponen en riesgo su preservación.

Plataformas internacionales como Cookpad y Tasty han demostrado el éxito de herramientas digitales para compartir recetas, pero rara vez incluyen representaciones fieles de la gastronomía ecuatoriana, dejando un vacío significativo en su difusión.

Ante esta realidad, surge la necesidad de una plataforma digital accesible y funcional que permita descubrir, compartir y valorar recetas auténticas de postres ecuatorianos, con funciones avanzadas de búsqueda y una interfaz intuitiva. De esta manera, el proyecto ChefHub busca contribuir activamente al rescate y difusión del patrimonio gastronómico del país.

## Analisis de requerimiento
Busca ser una plataforma única que recopile recetas de postres ecuatorianos, permitiendo a los usuarios descubrir, compartir y valorar recetas tradicionales. Para lograr esto, es esencial definir con claridad todas las necesidades del sistema, cómo se gestionarán los datos, y cuál será la lógica de negocio. A continuación, se presenta un análisis detallado, abarcando tanto las necesidades funcionales como no funcionales, asegurando que todos los aspectos del sistema estén cubiertos de manera comprensible y humanizada.

## Funcionalidades Clave:
### 1. Recetas Tradicionales Detalladas:
La aplicación ofrece una colección de recetas ecuatorianas explicadas paso a paso, incluyendo ingredientes, instrucciones detalladas y fotografías ilustrativas para facilitar su preparación.

### 2. Navegación Intuitiva:
Una estructura clara y accesible permite a los usuarios explorar fácilmente las distintas recetas a través de un diseño simple y amigable.

### 3. Organización de Recetas Individuales:
Cada receta cuenta con su propia página dedicada, donde se presenta información completa, manteniendo un diseño consistente y atractivo.

### 4. Vínculos Rápidos y Dinámicos:
Botones integrados que facilitan la navegación entre la página principal, la lista de recetas y las recetas individuales, mejorando la experiencia del usuario.

### 5. Adaptabilidad Visual:
Un diseño adaptable que permite que la aplicación sea funcional y visualmente atractiva tanto en dispositivos móviles como en computadoras de escritorio.

   
## Modelo Relacional

![image](img/modelorelacional.jpg)
   
## Tablas Principales

  1. Usuarios: Almacena información sobre los usuarios registrados.
  2. Recetas: Almacena información detallada sobre cada receta de postre ecuatoriano.
  3. Ingredientes: Contiene una lista de ingredientes comunes utilizados en las recetas.
  4. Recetas_Ingredientes: Relaciona cada receta con los ingredientes necesarios, especificando la cantidad requerida para cada uno.

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

### 3. Menú Principal
Una vez autenticado, al usuario se le mostrará un menú con las siguientes opciones:
- **Mostrar recetas existentes**
    - Mostrará una lista de todas las recetas disponibles con tiempo de preparación.
 
- **Crear receta**: Un formulario que permitirá agregar una receta a la base de datos, incluyendo campos para:
  - Nombre del postre
  - Descripción
  - Preparación
  - Lista de ingredientes con cantidades precisas
  - Tiempo de preparación total

  Validación de datos antes de enviar al backend. Al guardar, la receta se añadirá a la base de datos y será visible en el listado de recetas.

- **Salir**: Simplemente se cerrará el programa con un amigable mensaje de despedida, así como los créditos (nombre del autor).

