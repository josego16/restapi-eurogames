package ktor.plugins

import io.ktor.server.application.*
import io.ktor.server.routing.*
import ktor.routes.*

fun Application.configureRouting() {
    routing {
        countryRouting()
        gameRouting()
        gameSessionRouting()
        questionRouting()
        answerRouting()
        scoreRouting()
        userRouting()
    }
}