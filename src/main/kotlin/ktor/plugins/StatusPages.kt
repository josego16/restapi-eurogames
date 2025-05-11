package ktor.plugins

import com.auth0.jwt.exceptions.TokenExpiredException
import domain.utils.UUIDException
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.plugins.requestvalidation.*
import io.ktor.server.plugins.statuspages.*
import io.ktor.server.response.*

fun Application.configureStatusPages() {
    install(StatusPages) {

        //Validacion de datos
        exception<RequestValidationException> { call, cause ->
            call.respond(HttpStatusCode.BadRequest, cause.reasons.joinToString())
        }

        //UUID no valido
        exception<UUIDException> { call, cause ->
            call.respond(HttpStatusCode.BadRequest, cause.message.toString())
        }

        //Token no valido, no existe, no autorizado o caducado.
        exception<TokenExpiredException> { call, cause ->
            call.respond(HttpStatusCode.Unauthorized, cause.message.toString())
        }
    }
}