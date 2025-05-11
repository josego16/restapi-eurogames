package ktor.routes

import domain.dto.UserLoginDto
import domain.dto.UserRegisterDto
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
    }
    route("/auth") {
        post("/login") {
            val dto = call.receive<UserLoginDto>()
            val authResult = ProviderUserUseCase.login(dto)

            if (authResult == null) {
                call.respond(HttpStatusCode.Unauthorized, "Credenciales incorrectas")
            } else {
                call.respond(authResult)
            }
        }
        post("/register") {
            val dto = call.receive<UserRegisterDto>()
            val authResult = ProviderUserUseCase.register(dto)

            if (authResult == null) {
                call.respond(HttpStatusCode.Conflict, "Usuario ya existente o datos inválidos")
            } else {
                call.respond(HttpStatusCode.Created, authResult)
            }
        }
    }
}