package ktor.routes

import domain.usecase.score.ProviderScoreUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
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
        }
    }
}