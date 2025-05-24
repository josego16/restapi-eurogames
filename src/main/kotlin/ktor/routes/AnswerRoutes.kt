package ktor.routes

import domain.usecase.answers.ProviderAnswersUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.answerRouting() {
    authenticate("jwt-auth") {
        route("/answers") {
            get {
                val answers = ProviderAnswersUseCase.getAllAnswers()
                call.respond(answers)
            }
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }
                val answer = ProviderAnswersUseCase.getAnswerById(id)
                if (answer == null) {
                    call.respond(HttpStatusCode.NotFound, "Respuesta no encontrada")
                } else {
                    call.respond(answer)
                }
            }
        }
    }
}