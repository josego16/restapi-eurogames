package ktor.plugins

import domain.validators.usersValidation
import io.ktor.server.application.*
import io.ktor.server.plugins.requestvalidation.*

fun Application.configureValidation() {
    install(RequestValidation) {
        usersValidation()
    }
}