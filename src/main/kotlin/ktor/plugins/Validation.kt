package ktor.plugins

import domain.utils.validators.gameSessionValidation
import domain.utils.validators.mediaValidation
import domain.utils.validators.scoreValidation
import domain.utils.validators.usersValidation
import io.ktor.server.application.*
import io.ktor.server.plugins.requestvalidation.*

fun Application.configureValidation() {
    install(RequestValidation){
        usersValidation()
        scoreValidation()
        mediaValidation()
        gameSessionValidation()
    }
}