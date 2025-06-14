package ktor.routes

import domain.dto.ScoreCreateDto
import domain.usecase.score.ProviderScoreUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con el manejo de puntuaciones (scores) en el sistema.
 *
 * Todas las rutas están protegidas mediante autenticación JWT.
 *
 * ### Rutas (`/scores`)
 * - `GET /scores`: Devuelve todas las puntuaciones registradas.
 * - `GET /scores/{id}`: Devuelve una puntuación específica por su ID.
 * - `GET /scores/user/{userId}/total`: Devuelve el puntaje total acumulado de un usuario.
 * - `GET /scores/user/{userId}/game/{gameId}/total`: Devuelve el puntaje total de un usuario para un juego específico.
 * - `POST /scores`: Registra una nueva puntuación.
 */
fun Routing.scoreRouting() {
    authenticate("jwt-auth") {
        route("/scores") {

            /**
             * Endpoint: GET /scores
             * Devuelve una lista con todas las puntuaciones almacenadas.
             */
            get {
                val scores = ProviderScoreUseCase.getAllScores()
                call.respond(scores)
            }

            /**
             * Endpoint: GET /scores/{id}
             * Devuelve una puntuación específica por su ID.
             *
             * Devuelve 400 si el ID es inválido.
             * Devuelve 404 si la puntuación no se encuentra.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }
                val score = ProviderScoreUseCase.getScoreById(id)
                if (score == null) {
                    call.respond(HttpStatusCode.NotFound, "Puntuación no encontrada")
                } else {
                    call.respond(score)
                }
            }

            /**
             * Endpoint: GET /scores/user/{userId}/total
             * Devuelve el puntaje total acumulado por un usuario.
             *
             * @pathParam userId ID del usuario.
             * Devuelve 400 si el ID no es válido.
             */
            get("/user/{userId}/total") {
                val userId = call.parameters["userId"]?.toIntOrNull()
                if (userId == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id de usuario no válido")
                    return@get
                }
                val totalScore = ProviderScoreUseCase.getTotalScoreByUser(userId)
                call.respond(mapOf("userId" to userId, "totalScore" to totalScore))
            }

            /**
             * Endpoint: GET /scores/user/{userId}/game/{gameId}/total
             * Devuelve el puntaje total de un usuario en un juego específico.
             *
             * @pathParam userId ID del usuario.
             * @pathParam gameId ID del juego.
             * Devuelve 400 si los parámetros son inválidos.
             */
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

            /**
             * Endpoint: POST /scores
             * Crea una nueva entrada de puntuación.
             *
             * @body ScoreCreateDto con los datos necesarios.
             * Devuelve 400 si los datos están mal formateados.
             * Devuelve 500 si ocurre un error durante la creación.
             * Devuelve 201 si la puntuación se crea correctamente.
             */
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