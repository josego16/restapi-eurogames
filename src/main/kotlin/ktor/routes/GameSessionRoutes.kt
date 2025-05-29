package ktor.routes

import domain.dto.GameSessionCreateDto
import domain.enums.SessionStatus
import domain.models.UserSession
import domain.usecase.gamesession.ProviderGameSessionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.sessions.*

fun Routing.gameSessionRouting() {
    authenticate("jwt-auth") {
        route("/gameSessions") {

            get {
                val sessions = ProviderGameSessionUseCase.getAllGameSessions()
                call.respond(sessions)
            }

            get("/{id}") {
                val id = call.parameters["id"]?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }
                val gameSession = ProviderGameSessionUseCase.getGameSessionById(id)
                if (gameSession == null) {
                    call.respond(HttpStatusCode.NotFound, "Sesión de juego no encontrada")
                } else {
                    call.respond(gameSession)
                }
            }

            post {
                val userSession = call.sessions.get<UserSession>()
                if (userSession == null) {
                    call.respond(HttpStatusCode.Unauthorized, "Sesión no encontrada")
                    return@post
                }

                val createDto = try {
                    call.receive<GameSessionCreateDto>()
                } catch (e: Exception) {
                    call.respond(HttpStatusCode.BadRequest, "Datos inválidos para crear sesión")
                    return@post
                }
                // Usamos el userId de la sesión, ignoramos userId que venga en el body (si acaso)
                val sessionToCreate = createDto.copy(userId = userSession.userId)

                val createdSession = ProviderGameSessionUseCase.createGameSession(sessionToCreate)
                call.respond(HttpStatusCode.Created, createdSession)
            }

            patch("/{id}/status") {
                val id = call.parameters["id"]?.toIntOrNull()
                val statusParam = call.parameters["status"]

                if (id == null || statusParam == null) {
                    call.respond(HttpStatusCode.BadRequest, "Parámetros inválidos")
                    return@patch
                }

                val status = try {
                    SessionStatus.valueOf(statusParam)
                } catch (e: IllegalArgumentException) {
                    call.respond(HttpStatusCode.BadRequest, "Estado inválido")
                    return@patch
                }

                val updated = ProviderGameSessionUseCase.updateGameSessionStatus(id, status)
                if (updated) {
                    call.respond(HttpStatusCode.OK, "Estado actualizado correctamente")
                } else {
                    call.respond(HttpStatusCode.NotFound, "Sesión de juego no encontrada")
                }
            }
        }
    }
}