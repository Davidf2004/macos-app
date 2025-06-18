## LaSalleFoodsApp

Aplicación de tipo delivery desarrollada en SwiftUI para macOS, enfocada en locales reales dentro de la Universidad La Salle Bajío. Permite explorar restaurantes y gestionar pedidos desde una interfaz moderna y responsiva.


## Integrantes
|---------------------|----------------|-------------------------------|-----------|
| Nombre              | Usuario GitHub | Correo electrónico            | MATRICULA |
|---------------------|----------------|-------------------------------|-----------|
| David Fonseca Marín | `Davidf2004`   | davidfon28@gmail.com          |  79921    |
| César Carrillo      | `Tedtar`       | tedtar25@gmail.com            |  79892    |
| Álvaro Mora         | `gallomora4`   | alvaro mora lerma             |  80511    |
| Emiliano Ramirez    | `dxvm0n`       | Emiliano Ramirez Ayala        |  78942    |
|---------------------|----------------|-------------------------------|-----------|


## URL de la API desplegada

- Base URL: https://lasallefoods-rfhs3.ondigitalocean.app

- Rutas disponibles:
  - [`/restaurants`](https://lasallefoods-rfhs3.ondigitalocean.app/restaurants) → Lista de restaurantes
  - [`/cartItems`](https://lasallefoods-rfhs3.ondigitalocean.app/cartItems) → Carrito de compras

---

## Instrucciones para probar el proyecto

1. Clona el repositorio:

   git clone https://github.com/Davidf2004/macos-app.git
   cd macos-app

2. Abre el archivo `.xcodeproj` con Xcode.

2.1 en el inicio de sesion las credenciales son las siguientes:
    - Usuario: `admin@lasalle.mx`
    - Contraseña: `123456`

3. Selecciona un simulador como `iPad Pro (11-inch)` y ejecuta el proyecto.

4. Asegúrate de estar conectado a internet para que se consuma correctamente la API REST desplegada.

5. Navega por la app usando el sidebar:
   - Inicio: muestra los restaurantes consumidos desde la API.
   - Perfil: muestra información del usuario administrador.
   - Carrito: consume `/cartItems`.
   - Historial: vista simulada de compras pasadas.


## Tecnologías utilizadas

- SwiftUI 
- URLSession + async/await
- Vapor (API en backend – no incluida en este repositorio)

