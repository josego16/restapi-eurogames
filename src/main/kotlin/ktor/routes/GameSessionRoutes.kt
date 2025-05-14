package ktor.routes

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionFinishDto
import domain.usecase.gamesession.ProviderGameSessionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.gameSessionRouting() {
    authenticate("jwt-auth") {
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
            post {
                val dto = call.receive<GameSessionCreateDto>()
                val gameSession = ProviderGameSessionUseCase.startGameSession(dto)
                call.respond(gameSession)
            }

            put("/{id}/finish") {
                val idParam = call.parameters["id"]
                val id = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@put
                }.getOrDefault(UUID.randomUUID())
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@put
                }

                val dto = call.receive<GameSessionFinishDto>()
                val score = ProviderGameSessionUseCase.finishGameSession(id, dto.actions)
                call.respond(HttpStatusCode.OK, score)
            }
        }
    }
}