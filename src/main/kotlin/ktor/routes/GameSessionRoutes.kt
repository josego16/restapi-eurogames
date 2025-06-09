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
                val userSession = call.sessions.get<UserSession>()
                if (userSession == null) {
                    call.respond(HttpStatusCode.Unauthorized, "Sesión no encontrada")
                    return@get
                }
                val gameSession = ProviderGameSessionUseCase.getGameSessionById(id)
                if (gameSession == null || gameSession.userId != userSession.userId) {
                    call.respond(HttpStatusCode.NotFound, "Sesión de juego no encontrada o acceso denegado")
                } else {
                    call.respond(gameSession)
                }
            }

            get("/user") {
                val userSession = call.sessions.get<UserSession>()
                if (userSession == null) {
                    call.respond(HttpStatusCode.Unauthorized, "Sesión no encontrada")
                    return@get
                }
                val sessions = ProviderGameSessionUseCase.getGameSessionsByUserId(userSession.userId)
                call.respond(sessions)
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
                val createdSession = ProviderGameSessionUseCase.createGameSession(createDto, userSession.userId)
                call.respond(HttpStatusCode.Created, createdSession)
            }

            patch("/{id}") {
                val id = call.parameters["id"]?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@patch
                }
                val session = try {
                    call.receive<domain.models.GameSession>()
                } catch (e: Exception) {
                    call.respond(HttpStatusCode.BadRequest, "Datos inválidos para actualizar sesión")
                    return@patch
                }
                val updatedSession = ProviderGameSessionUseCase.updateGameSession(id, session)
                if (updatedSession == null) {
                    call.respond(HttpStatusCode.NotFound, "Sesión de juego no encontrada")
                } else {
                    call.respond(HttpStatusCode.OK, updatedSession)
                }
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