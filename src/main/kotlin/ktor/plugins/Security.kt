package ktor.plugins

import domain.auth.JwtConfig
import io.ktor.server.application.*
import io.ktor.server.auth.*
import io.ktor.server.auth.jwt.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Configura la seguridad y autenticación JWT en la aplicación Ktor.
 * Incluye rutas protegidas y públicas de ejemplo.
 * @receiver Aplicación Ktor donde se configura la seguridad.
 */
fun Application.configureSecurity() {
    install(Authentication) {
        jwt("jwt-auth") {
            JwtConfig.configureAuthentication(this)
        }
    }

    routing {
        authenticate("jwt-auth") {
            get("/protected") {
                val principal = call.principal<JWTPrincipal>()!!
                val userId = principal.getClaim("userId", String::class)
                call.respondText("Hello, user with ID: $userId. You are authenticated.")
            }
        }

        get("/public") {
            call.respondText("This is a public endpoint, no token needed.")
        }
    }
}