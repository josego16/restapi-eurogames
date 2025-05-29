package ktor.plugins

import domain.models.UserSession
import io.ktor.server.application.*
import io.ktor.server.sessions.*

fun Application.configureSessions() {
    install(Sessions) {
        cookie<UserSession>("USER_SESSION") {
            cookie.path = "/"
            cookie.maxAgeInSeconds = 3600 // 1 hora
            cookie.httpOnly = true
        }
    }
}