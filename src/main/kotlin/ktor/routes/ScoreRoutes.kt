package ktor.routes

import domain.usecase.score.ProviderMediaUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.scoreRouting() {
    authenticate("jwt-auth") {
        route("/scores") {
            get {
                val scores = ProviderMediaUseCase.getAllScores()
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

                val score = ProviderMediaUseCase.getScoreById(id)
                if (score == null) {
                    call.respond(HttpStatusCode.NotFound, "Puntuacion no encontrada")
                } else {
                    call.respond(score)
                }
            }
        }
    }
}