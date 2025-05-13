package ktor.plugins

import io.ktor.server.application.*
import io.ktor.server.routing.*
import ktor.routes.*

fun Application.configureRouting() {
    routing {
        userRouting()
        countryRouting()
        gameRouting()
        gameSessionRouting()
        questionRouting()
        answerRouting()
        scoreRouting()
        mediaRouting()
    }
}