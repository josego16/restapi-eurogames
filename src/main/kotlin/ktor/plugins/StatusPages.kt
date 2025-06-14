package ktor.plugins

import com.auth0.jwt.exceptions.JWTVerificationException
import com.auth0.jwt.exceptions.TokenExpiredException
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.plugins.requestvalidation.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.response.*
import org.slf4j.LoggerFactory

/**
 * Configura el manejo global de errores y excepciones en la aplicación Ktor.
 * Incluye manejo de validaciones, errores JWT, rutas no encontradas y errores internos.
 * @receiver Aplicación Ktor donde se configuran las páginas de estado.
 */
fun Application.configureStatusPages() {
    val logger = LoggerFactory.getLogger("StatusPages")

    install(StatusPages) {

        // Validación de datos (por ejemplo, DTO mal formados)
        exception<RequestValidationException> { call, cause ->
            logger.warn("Request validation failed: ${cause.reasons}")
            call.respond(
                HttpStatusCode.BadRequest,
                mapOf("error" to "Validation failed", "details" to cause.reasons)
            )
        }

        // Token expirado específicamente
        exception<TokenExpiredException> { call, cause ->
            logger.warn("Expired token: ${cause.message}")
            call.respond(
                HttpStatusCode.Unauthorized,
                mapOf("error" to "Token expired", "message" to cause.message)
            )
        }

        // Token inválido o manipulado (no solo expirado)
        exception<JWTVerificationException> { call, cause ->
            logger.warn("JWT verification failed: ${cause.message}")
            call.respond(
                HttpStatusCode.Unauthorized,
                mapOf("error" to "Invalid token", "message" to cause.message)
            )
        }

        // Errores de acceso no autorizado (por ejemplo, permisos)
        status(HttpStatusCode.Forbidden) { call, _ ->
            call.respond(
                HttpStatusCode.Forbidden,
                mapOf("error" to "Forbidden", "message" to "You don't have permission to access this resource.")
            )
        }

        // Ruta no encontrada
        status(HttpStatusCode.NotFound) { call, _ ->
            call.respond(
                HttpStatusCode.NotFound,
                mapOf("error" to "Not Found", "message" to "The requested resource was not found.")
            )
        }

        // Manejo genérico de excepciones inesperadas
        exception<Throwable> { call, cause ->
            logger.error("Unhandled exception: ${cause.message}", cause)
            call.respond(
                HttpStatusCode.InternalServerError,
                mapOf("error" to "Internal server error", "message" to "An unexpected error occurred.")
            )
        }
    }
}