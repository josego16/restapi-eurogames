package ktor.routes

import domain.usecase.gamesession.ProviderGameSessionUseCase
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.gameSessionRouting() {
    route("/gameSession") {
        get {
            val gameSessions = ProviderGameSessionUseCase.getAllGameSessions()
            call.respond(gameSessions)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }.getOrDefault(UUID.randomUUID())

            val gameSession = ProviderGameSessionUseCase.getGameSessionById(id)
            if (gameSession == null) {
                call.respond(HttpStatusCode.NotFound, "Sesion de juego no encontrada")
            } else {
                call.respond(gameSession)
            }
        }
    }
}