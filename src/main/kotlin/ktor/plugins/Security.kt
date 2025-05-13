package ktor.plugins

import domain.auth.JwtConfig
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.auth.jwt.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Application.configureSecurity() {
    install(Authentication) {
        jwt("jwt-auth") {
            JwtConfig.configureAuthentication(this)
        }
    }

    routing {
        // Ruta protegida como ejemplo
        authenticate("jwt-auth") {
            get("/protected") {
                val principal = call.principal<JWTPrincipal>()!!
                val userId = principal.getClaim("userId", String::class)
                call.respondText("Hello, user with ID: $userId. You are authenticated.")
            }
        }

        // Ruta pública como ejemplo
        get("/public") {
            call.respondText("This is a public endpoint, no token needed.")
        }
    }
}