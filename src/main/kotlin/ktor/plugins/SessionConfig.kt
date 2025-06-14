package ktor.plugins

import domain.models.UserSession
import io.ktor.server.application.*
import io.ktor.server.sessions.*

/**
 * Configura el manejo de sesiones de usuario en la aplicación Ktor.
 * Utiliza cookies para almacenar la sesión del usuario.
 * @receiver Aplicación Ktor donde se configuran las sesiones.
 */
fun Application.configureSessions() {
    install(Sessions) {
        cookie<UserSession>("USER_SESSION") {
            cookie.path = "/"
            cookie.maxAgeInSeconds = 3600 // 1 hora
            cookie.httpOnly = true
        }
    }
}