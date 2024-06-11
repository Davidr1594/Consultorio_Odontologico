# Proyecto Consultorio Odontologico


### Objetivo

El objetivo principal del proyecto es desarrollar un sistema de gestión de un Consultorio Odontológico utilizando tecnologías Java web. Este sistema permite a los usuarios gestionar alta de personal, alta de horarios de trabajo, alta de usuarios y permisos, así como realizar búsquedas de todos ellos.

### Tecnologías Utilizadas

• Java Web: Para la implementación de la lógica del lado del servidor.
• JSP (JavaServer Pages): Para la creación de las vistas dinámicas del sistema.
• JPA (Java Persistence API) con EclipseLink: Para la gestión de la persistencia y el acceso a la base de datos.
• Servlets: Para controlar la lógica del flujo de la aplicación y las solicitudes HTTP.

### Descripción de las Funcionalidades

#### Login

• Sistema de inicio de sesión verificando las credenciales con la base de datos.

![LoginOdonto](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/fcdd419f-1ee3-469f-b428-b7617b79aa97)

• En caso que se ingresen las credenciales incorrectas.

![User passIncorrectosOdonto](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/9c0ae024-5a07-4a31-9d47-edba61111a56)

#### Odontólogos

• Ver Odontólogos: visualiza todos los odontólogos que han sido agregados con botones para eliminar o editar cada uno de ellos.

![verOndotologosOdonto](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/406d6df2-9b91-4672-a7f5-20687d400417)


• Alta Odontólogos = pide los campos para dar de alta a un nuevo Odontólogo.
![altaOdontologosOdonto](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/62bc49d3-0ede-408f-860d-5dfa6728ce6f)



#### Usuarios

• Ver Usuarios =  visualiza todos los Usuarios que han sido agregados con botones para eliminar o editar cada uno de ellos.

![VerUsuarios](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/d8f842da-1556-4046-becf-ce4de94a2e65)

• Alta Usuarios = pide los campos para dar de alta a un nuevo Usuario.

![AltaUsuariosOdonto](https://github.com/Davidr1594/Consultorio_Odontologico/assets/169404551/89419311-06d8-4c33-a537-a2e6195377a9)


*Mismas funciones están implementadas en todo el menú(no todas las opciones tienen implementacion). El objetivo fue poder realizar un CRUD completo usando una pagina html de plantilla.

### Arquitectura del Proyecto

#### 1. Capa de Presentación:

•Utiliza JSP para generar las páginas web dinámicas.\
•Las páginas JSP están diseñadas con HTML y CSS, y utilizan JSTL (JSP Standard Tag Library) para iterar sobre datos y mostrar contenido dinámico.

#### 2. Capa de Control:

•Los Servlets gestionan las solicitudes HTTP y actúan como controladores de la aplicación.\
•Cada servlet se encarga de diferentes partes del sistema (usuarios, odontologos, horarios, etc.).

#### 3. Capa de Persistencia:

•Implementada con JPA utilizando EclipseLink como proveedor de persistencia.\
•Las entidades JPA representan las tablas de la base de datos.\
•Se utilizan repositorios JPA para realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar).

### Flujo de Trabajo
1. El usuario realiza una solicitud a través de la interfaz web (por ejemplo, para añadir un nuevo producto).
2. El servlet correspondiente recibe la solicitud y ejecuta la lógica de negocio necesaria.
3. El servlet interactúa con la capa de persistencia a través de JPA para almacenar o recuperar datos de la base de datos.
4. El servlet redirige o reenvía la solicitud a una página JSP adecuada para mostrar la información o confirmar la acción realizada.
5. La página JSP genera el contenido dinámico y lo envía de vuelta al navegador del usuario.

#### Conclusión
Este sistema de gestión de inventarios proporciona una solución robusta y eficiente para manejar productos y categorías en una tienda minorista. La combinación de Java Web, JSP, JPA con EclipseLink y Servlets ofrece una arquitectura sólida y escalable, permitiendo una gestión de inventarios efectiva y amigable para el usuario.


plantilla obtenida de : https://startbootstrap.com/theme/sb-admin-2


