![EuroGames REST API](https://socialify.git.ci/josego16/restapi-eurogames/image?custom_language=Kotlin&font=Source+Code+Pro&language=1&name=1&owner=1&pattern=Circuit+Board&theme=Light)

# EuroGames REST API

> Backend para la gestión de datos de EuroGames101. Facilita la administración de usuarios, juegos, partidas y
> resultados de forma segura y eficiente.

[![Kotlin](https://img.shields.io/badge/Kotlin-2.1.20-blue.svg)](https://kotlinlang.org/)
[![Ktor](https://img.shields.io/badge/Ktor-3.1.3-orange.svg)](https://ktor.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Instalación](#-instalación)
- [Tecnologías](#-tecnologías-utilizadas)
- [Uso](#-uso)
- [Licencia](#-licencia)

---

## 🚀 Características

| Funcionalidad                    | Descripción                                                                       |
|----------------------------------|-----------------------------------------------------------------------------------|
| 👤 **Gestión de usuarios**       | Sistema completo de registro, autenticación y autorización con roles y permisos   |
| 🎮 **Administración de juegos**  | Crear, actualizar y eliminar juegos y sesiones de juego con facilidad             |
| 📊 **Gestión de resultados**     | Almacenamiento y recuperación eficiente de puntuaciones y estadísticas            |
| 🌍 **Datos de países**           | Información geográfica y cultural detallada de países europeos                    |
| 🏆 **Dificultades y categorías** | Sistema flexible de niveles ajustables y diferentes temáticas para cada minijuego |

---

## 🛠️ Instalación

Sigue estos pasos para poner en marcha la API en tu entorno local:

### 📥 Requisitos previos

- JDK 11 o superior
- Gradle 7.x o superior
- Docker y Docker Compose (opcional, para despliegue con contenedores)

### ⚙️ Pasos de instalación

1. **Clonar el repositorio**

   ```bash
   git clone https://github.com/josego16/restapi-eurogames.git
   ```

   Accede al directorio del proyecto:
    ```bash
    cd restapi-eurogames
    ```

2. **Compilar el proyecto**

   ```bash
   ./gradlew build
   ```

3. **Ejecutar el servidor**

   ```bash
   ./gradlew run
   ```

### 📦 Opciones de despliegue

#### Generar y ejecutar como JAR

```bash
  ./gradlew buildFatJar
```

```bash
  java -jar build/libs/eurogames-all.jar
```

#### Construir y ejecutar con Docker

Construir la imagen.

```bash
  ./gradlew buildImage
```

Ejectuar el contenedor.

```bash
  ./gradlew runDocker
```

Alternativamente, puedes usar Docker Compose:

```bash
   docker-compose up -d
```

---

## 🧰 Tecnologías utilizadas

### 💻 Core

| Tecnología                | Descripción                                             |
|---------------------------|---------------------------------------------------------|
| **Kotlin**                | Lenguaje de programación moderno, conciso y seguro      |
| **Ktor**                  | Framework ligero para crear aplicaciones web asíncronas |
| **kotlinx.serialization** | Biblioteca de serialización para Kotlin                 |

### 🗄️ Persistencia

| Tecnología     | Descripción                                     |
|----------------|-------------------------------------------------|
| **Exposed**    | ORM de Kotlin para acceso a bases de datos      |
| **PostgreSQL** | Sistema de gestión de bases de datos relacional |

### 🔐 Seguridad

| Tecnología | Descripción                                                 |
|------------|-------------------------------------------------------------|
| **JWT**    | Tokens para autenticación y autorización                    |
| **Bcrypt** | Algoritmo de hash para almacenamiento seguro de contraseñas |

### 🔌 Middleware y características adicionales

- ✅ **Logging y trazado**: `Call Logging`, `Call ID`
- 📁 **Contenido estático**: Servir archivos estáticos
- 🚦 **Páginas de estado**: Manejo personalizado de errores HTTP
- ✓ **Validación**: Validación de solicitudes entrantes
- 🔄 **Sesiones**: Gestión de sesiones de usuario
- 📊 **Content Negotiation**: Soporte para múltiples formatos (JSON, XML)
- 🔧 **Headers por defecto**: Configuración de cabeceras HTTP
- 🌐 **CORS**: Soporte para Cross-Origin Resource Sharing

## 🏗️ Arquitectura y estructura del proyecto

### 📊 Estructura de la base de datos

El proyecto utiliza PostgreSQL como sistema de gestión de bases de datos relacional. La estructura de la base de datos
incluye las siguientes tablas principales:

| Tabla            | Descripción                                           |
|------------------|-------------------------------------------------------|
| **country**      | Almacena información sobre países europeos            |
| **auth**         | Gestiona datos de autenticación de usuarios           |
| **game**         | Contiene información sobre los minijuegos disponibles |
| **game_session** | Registra las sesiones de juego de los usuarios        |
| **question**     | Almacena preguntas para los minijuegos tipo quiz      |
| **answer**       | Contiene respuestas asociadas a las preguntas         |
| **score**        | Registra las puntuaciones de los usuarios             |

La base de datos está configurada para inicializarse automáticamente con Docker Compose, utilizando los scripts SQL
ubicados en el directorio `db/`.

### 🧩 Estructura de paquetes

El proyecto sigue una arquitectura limpia (Clean Architecture) con una clara separación de responsabilidades:

```
src/main/kotlin/
├── data/                  # Capa de datos
│   ├── db/                # Configuración de base de datos
│   │   ├── daos/          # Objetos de acceso a datos
│   │   └── tables/        # Definiciones de tablas para Exposed
│   └── repositories/      # Implementaciones de repositorios
├── domain/                # Capa de dominio (lógica de negocio)
│   ├── auth/              # Lógica de autenticación
│   ├── dto/               # Objetos de transferencia de datos
│   ├── enums/             # Enumeraciones
│   ├── interfaces/        # Interfaces de repositorios
│   ├── mappers/           # Funciones de mapeo entre objetos
│   ├── models/            # Modelos de dominio
│   ├── usecase/           # Casos de uso organizados por entidad
│   └── validators/        # Lógica de validación
└── ktor/                  # Capa de presentación
    ├── plugins/           # Configuración de plugins de Ktor
    └── routes/            # Definición de rutas de la API
```

Esta estructura sigue los principios de la arquitectura hexagonal, donde:

- La **capa de dominio** contiene toda la lógica de negocio y es independiente de frameworks externos
- La **capa de datos** implementa las interfaces definidas en el dominio para el acceso a datos
- La **capa de presentación** (ktor) maneja las solicitudes HTTP y se comunica con el dominio

---

## 📚 Uso

### 🔑 Autenticación

1. **Acceso a la API**: Navega a la URL base (por defecto `http://localhost:8080`)

2. **Registro de usuario**:
   ```http
   POST /auth/register
   Content-Type: application/json

   {
     "fullName": "Usuario Ejemplo",
     "username": "usuario_ejemplo",
     "email": "usuario@ejemplo.com",
     "password": "contraseña_segura"
   }
   ```

3. **Inicio de sesión y obtención de token**:
   ```http
   POST /auth/login
   Content-Type: application/json

   {
     "username": "usuario_ejemplo",
     "password": "contraseña_segura"
   }
   ```

   Respuesta:
   ```json
   {
     "user": {
       "id": 1,
       "username": "usuario_ejemplo",
       "fullName": "Usuario Ejemplo",
       "email": "usuario@ejemplo.com"
     },
     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
   }
   ```

### 🎮 Gestión de juegos

1. **Obtener todos los juegos**:
   ```http
   GET /games
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

   Respuesta:
   ```json
   [
     {
       "id": 1,
       "name": "Adivina la Bandera",
       "gameType": "Adivinar_banderas",
       "imageUrl": "https://example.com/flags-game.jpg",
       "description": "Pon a prueba tus conocimientos sobre banderas europeas"
     },
     {
       "id": 2,
       "name": "Quiz de Capitales",
       "gameType": "Quiz",
       "imageUrl": "https://example.com/capitals-quiz.jpg",
       "description": "¿Conoces todas las capitales de Europa?"
     }
   ]
   ```

2. **Obtener un juego específico**:
   ```http
   GET /games/1
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

### 🎲 Gestión de sesiones de juego

1. **Crear una nueva sesión de juego**:
   ```http
   POST /gameSessions
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   Content-Type: application/json

   {
     "gameId": 1,
     "difficulty": "MEDIUM"
   }
   ```

2. **Obtener sesiones de juego del usuario actual**:
   ```http
   GET /gameSessions/user
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

3. **Actualizar el estado de una sesión de juego**:
   ```http
   PATCH /gameSessions/1/status?status=COMPLETED
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

### 🌍 Datos de países

1. **Obtener información de países**:
   ```http
   GET /countries
   Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
   ```

   Respuesta:
   ```json
   [
     {
       "id": 1,
       "nameCommon": "España",
       "nameOfficial": "Reino de España",
       "capital": ["Madrid"],
       "region": "Europa",
       "subregion": "Europa del Sur",
       "population": 47351567,
       "flagUrl": "https://example.com/flags/spain.svg"
     },
     {
       "id": 2,
       "nameCommon": "Francia",
       "nameOfficial": "República Francesa",
       "capital": ["París"],
       "region": "Europa",
       "subregion": "Europa Occidental",
       "population": 67391582,
       "flagUrl": "https://example.com/flags/france.svg"
     }
   ]
   ```

### 🔒 Acceso a endpoints protegidos

Incluye el token JWT en el encabezado de autorización para todos los endpoints protegidos:

```http
GET /users
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

### 📖 Documentación

Consulta la documentación interactiva Swagger en `/swagger` para explorar todos los endpoints disponibles y sus
parámetros.

---

## 🛡️ Licencia

Este proyecto está licenciado bajo la **Licencia MIT**. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

*© 2025 EuroGames101. Todos los derechos reservados.*
