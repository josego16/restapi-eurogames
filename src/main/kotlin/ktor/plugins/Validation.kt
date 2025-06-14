package ktor.plugins

import domain.validators.usersValidation
import io.ktor.server.application.*
import io.ktor.server.plugins.requestvalidation.*

/**
 * Configura la validación de peticiones para los DTO de usuario en la aplicación Ktor.
 * Utiliza validaciones personalizadas para registro, login y actualización de usuario.
 * @receiver Aplicación Ktor donde se configura la validación de peticiones.
 */
fun Application.configureValidation() {
    install(RequestValidation) {
        usersValidation()
    }
}