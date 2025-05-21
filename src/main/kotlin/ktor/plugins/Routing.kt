package ktor.plugins

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import ktor.prometheusRegistry
import ktor.routes.*

fun Application.configureRouting() {
    routing {
        get("/") {
            call.respondText("Servidor funcionando correctamente", ContentType.Text.Plain)
        }
        get("/metrics") {
            call.respondText(prometheusRegistry.scrape())
        }

        userRouting()
        countryRouting()
        gameRouting()
        gameSessionRouting()
        questionRouting()
        answerRouting()
        scoreRouting()
    }
}