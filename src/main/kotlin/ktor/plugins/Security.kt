package ktor.plugins

import domain.auth.JwtConfig
import domain.usecase.user.ProviderUserUseCase
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.auth.jwt.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.sessions.*
import java.util.*

fun Application.configureSecurity() {
    install(Sessions) {
    }
    install(Authentication) {
        jwt("jwt-auth") {
            JwtConfig.configureAuthentication(this)
        }
    }

    routing {
        authenticate("jwt-auth") {
            get("/protected") {
                val principal = call.principal<JWTPrincipal>()
                val username = principal?.getClaim("username", String::class) ?: "Unknown"
                call.respondText("Hello, $username! You are authenticated.")
            }
        }
    }
}

suspend fun ApplicationCall.validateToken(): Boolean {
    val dataUser = this.principal<JWTPrincipal>()
    val userIdString = dataUser?.payload?.getClaim("userId")?.asString()

    val userId = try {
        userIdString?.let { UUID.fromString(it) }
    } catch (error: IllegalArgumentException) {
        null
    }

    if (userId == null) {
        this.respond(HttpStatusCode.BadRequest, "Invalid or missing userId.")
        return false
    }

    //verificar que el usuario existe:
    val user = ProviderUserUseCase.getUserById(userId)
    if (user == null) {
        this.respond(HttpStatusCode.Unauthorized, "User not found.")
        return false
    }
    return true
}