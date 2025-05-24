package ktor.routes

import domain.usecase.gamesession.ProviderGameSessionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.gameSessionRouting() {
    authenticate("jwt-auth") {
        route("/gameSessions") {
            get {
                val gameSessions = ProviderGameSessionUseCase.getAllGameSessions()
                call.respond(gameSessions)
            }
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }
                val gameSession = ProviderGameSessionUseCase.getGameSessionById(id)
                if (gameSession == null) {
                    call.respond(HttpStatusCode.NotFound, "Sesion de juego no encontrada")
                } else {
                    call.respond(gameSession)
                }
            }
        }
    }
}