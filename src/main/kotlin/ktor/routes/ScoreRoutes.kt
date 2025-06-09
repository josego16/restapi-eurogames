package ktor.routes

import domain.dto.ScoreCreateDto
import domain.usecase.score.ProviderScoreUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.scoreRouting() {
    authenticate("jwt-auth") {
        route("/scores") {
            get {
                val scores = ProviderScoreUseCase.getAllScores()
                call.respond(scores)
            }
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }
                val score = ProviderScoreUseCase.getScoreById(id)
                if (score == null) {
                    call.respond(HttpStatusCode.NotFound, "Puntuacion no encontrada")
                } else {
                    call.respond(score)
                }
            }
            get("/user/{userId}/total") {
                val userId = call.parameters["userId"]?.toIntOrNull()
                if (userId == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id de usuario no válido")
                    return@get
                }
                val totalScore = ProviderScoreUseCase.getTotalScoreByUser(userId)
                call.respond(mapOf("userId" to userId, "totalScore" to totalScore))
            }
            get("/user/{userId}/game/{gameId}/total") {
                val userId = call.parameters["userId"]?.toIntOrNull()
                val gameId = call.parameters["gameId"]?.toIntOrNull()
                if (userId == null || gameId == null) {
                    call.respond(HttpStatusCode.BadRequest, "Parámetros no válidos")
                    return@get
                }
                val totalScore = ProviderScoreUseCase.getTotalScoreByUserAndGame(userId, gameId)
                call.respond(mapOf("userId" to userId, "gameId" to gameId, "totalScore" to totalScore))
            }
            post {
                val dto = try {
                    call.receive<ScoreCreateDto>()
                } catch (e: Exception) {
                    call.respond(HttpStatusCode.BadRequest, "Datos de puntuación inválidos")
                    return@post
                }
                try {
                    val created = ProviderScoreUseCase.createScore(dto)
                    call.respond(HttpStatusCode.Created, created)
                } catch (e: Exception) {
                    call.respond(HttpStatusCode.InternalServerError, "No se pudo crear la puntuación")
                }
            }
        }
    }
}