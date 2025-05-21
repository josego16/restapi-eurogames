package ktor.routes

import domain.dto.UserLoginDto
import domain.dto.UserRegisterDto
import domain.dto.UserUpdateDto
import domain.usecase.user.ProviderUserUseCase
import io.ktor.http.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.userRouting() {
    route("/users") {
        get {
            val users = ProviderUserUseCase.getAllUsers()
            call.respond(users)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }.getOrDefault(UUID.randomUUID())

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
            val idUser = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@patch
            }.getOrDefault(UUID.randomUUID())

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
            println("[LOGIN] DTO recibido: $dto")
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
            println("[REGISTER] DTO recibido: $dto")
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