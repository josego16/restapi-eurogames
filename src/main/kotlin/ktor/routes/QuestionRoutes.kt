package ktor.routes

import domain.usecase.question.ProviderQuestionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.questionRouting() {
    authenticate("jwt-auth"){
        route("/question") {
            get {
                val questions = ProviderQuestionUseCase.getAllQuestions()
                call.respond(questions)
            }
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }.getOrDefault(UUID.randomUUID())

                val question = ProviderQuestionUseCase.getQuestionById(id)
                if (question == null) {
                    call.respond(HttpStatusCode.NotFound, "Pregunta no encontrada")
                } else {
                    call.respond(question)
                }
            }
        }
        route("/questionWithAnswer") {
            get {
                val questionwithanswer = ProviderQuestionUseCase.getAllQuestionWithAnswer()
                call.respond(questionwithanswer)
            }
        }
    }
}