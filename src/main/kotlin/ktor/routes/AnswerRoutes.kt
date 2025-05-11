package ktor.routes

import domain.usecase.answers.ProviderAnswersUseCase
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.answerRouting() {
    route("/answer") {
        get {
            val answers = ProviderAnswersUseCase.getAllAnswers()
            call.respond(answers)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }.getOrDefault(UUID.randomUUID())

            val answer = ProviderAnswersUseCase.getAnswerById(id)
            if (answer == null) {
                call.respond(HttpStatusCode.NotFound, "Respuesta no encontrada")
            } else {
                call.respond(answer)
            }
        }
    }
}