package ktor.plugins

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import ktor.routes.*

/**
 * Configura las rutas principales de la aplicación Ktor.
 * Incluye la ruta raíz y la integración de los módulos de rutas de usuario, país, juego, pregunta, respuesta y puntuación.
 * @receiver Aplicación Ktor donde se configuran las rutas.
 */
fun Application.configureRouting() {
    routing {
        get("/") {
            call.respondText("Servidor funcionando correctamente", ContentType.Text.Plain)
        }

        userRouting()
        countryRouting()
        gameRouting()
        questionRouting()
        answerRouting()
        scoreRouting()
    }
}