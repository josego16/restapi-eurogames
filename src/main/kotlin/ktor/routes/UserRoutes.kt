package ktor.routes

import domain.dto.UserLoginDto
import domain.dto.UserRegisterDto
import domain.dto.UserUpdateDto
import domain.usecase.user.ProviderUserUseCase
import io.ktor.http.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.userRouting() {
    route("/users") {
        get {
            val users = ProviderUserUseCase.getAllUsers()
            call.respond(users)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = idParam?.toIntOrNull()
            if (id == null) {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }
            val user = ProviderUserUseCase.getUserById(id)
            if (user == null) {
                call.respond(HttpStatusCode.NotFound, "Usuario no encontrado")
            } else {
                call.respond(user)
            }
        }
        patch("/{id}") {
            val updateUser = call.receive<UserUpdateDto>()
            val idParam = call.parameters["id"]
            val idUser = idParam?.toIntOrNull()
            if (idUser == null) {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
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
    route("/auth") {
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