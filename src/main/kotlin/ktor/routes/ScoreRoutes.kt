package ktor.routes

import domain.usecase.score.ProviderScoreUseCase
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.scoreRouting() {
    route("/score") {
        get {
            val scores = ProviderScoreUseCase.getAllScores()
            call.respond(scores)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }.getOrDefault(UUID.randomUUID())

            val score = ProviderScoreUseCase.getScoreById(id)
            if (score == null) {
                call.respond(HttpStatusCode.NotFound, "Puntuacion no encontrada")
            } else {
                call.respond(score)
            }
        }
    }
}