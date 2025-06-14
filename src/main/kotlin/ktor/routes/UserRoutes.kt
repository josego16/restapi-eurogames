package ktor.routes

import domain.dto.UserLoginDto
import domain.dto.UserRegisterDto
import domain.dto.UserUpdateDto
import domain.usecase.user.ProviderUserUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con los usuarios y la autenticación.
 *
 * Este endpoint incluye rutas protegidas con JWT para operaciones CRUD sobre usuarios,
 * y rutas públicas para autenticación (`/auth/login`) y registro (`/auth/register`).
 *
 * ### Rutas protegidas (`/users`)
 * - `GET /users`: Obtiene todos los usuarios.
 * - `GET /users/{id}`: Obtiene un usuario por su ID.
 * - `PATCH /users/{id}`: Actualiza un usuario por su ID.
 *
 * ### Rutas públicas (`/auth`)
 * - `POST /auth/login`: Inicia sesión con usuario y contraseña.
 * - `POST /auth/register`: Registra un nuevo usuario.
 */
fun Routing.userRouting() {
    authenticate("jwt-auth") {
        route("/users") {

            /**
             * Endpoint: GET /users
             * Devuelve todos los usuarios del sistema.
             */
            get {
                val users = ProviderUserUseCase.getAllUsers()
                call.respond(users)
            }

            /**
             * Endpoint: GET /users/{id}
             * Devuelve un usuario según su ID. Devuelve 400 si el ID es inválido,
             * o 404 si no se encuentra el usuario.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }

                val user = ProviderUserUseCase.getUserById(id)
                if (user == null) {
                    call.respond(HttpStatusCode.NotFound, "Usuario no encontrado")
                } else {
                    call.respond(user)
                }
            }

            /**
             * Endpoint: PATCH /users/{id}
             * Actualiza un usuario existente por su ID con los datos recibidos.
             * Devuelve 400 si el ID no es válido, o 404 si el usuario no existe.
             */
            patch("/{id}") {
                val updateUser = call.receive<UserUpdateDto>()
                val idParam = call.parameters["id"]
                val idUser = idParam?.toIntOrNull()
                if (idUser == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@patch
                }

                val user = ProviderUserUseCase.updateUser(idUser, updateUser)
                if (user == null) {
                    call.respond(HttpStatusCode.NotFound, "No se ha podido actualizar el usuario")
                } else {
                    call.respond(user)
                }
            }
        }
    }

    route("/auth") {

        /**
         * Endpoint: POST /auth/login
         * Auténtica a un usuario y devuelve un token JWT si las credenciales son válidas.
         */
        post("/login") {
            println("[LOGIN] Petición recibida en /auth/login")
            val dto = call.receive<UserLoginDto>()
            val authResult = ProviderUserUseCase.login(dto)

            if (authResult == null) {
                println("[LOGIN] Fallo de autenticación: credenciales incorrectas")
                call.respond(HttpStatusCode.Unauthorized, mapOf("error" to "Credenciales incorrectas"))
            } else {
                println("[LOGIN] Autenticación exitosa para usuario: ${dto.username}")
                call.respond(authResult)
            }
        }

        /**
         * Endpoint: POST /auth/register
         * Registra a un nuevo usuario y devuelve su información con el token JWT.
         */
        post("/register") {
            println("[REGISTER] Petición recibida en /auth/register")
            val dto = call.receive<UserRegisterDto>()
            val authResult = ProviderUserUseCase.register(dto)

            if (authResult == null) {
                println("[REGISTER] Fallo: usuario ya existente o datos inválidos")
                call.respond(HttpStatusCode.Conflict, mapOf("error" to "Usuario ya existente o datos inválidos"))
            } else {
                println("[REGISTER] Usuario registrado correctamente: ${dto.username}")
                call.respond(HttpStatusCode.Created, authResult)
            }
        }
    }
}