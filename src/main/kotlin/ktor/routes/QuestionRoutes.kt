package ktor.routes

import domain.enums.Difficulty
import domain.usecase.question.ProviderQuestionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.questionRouting() {
    authenticate("jwt-auth") {
        route("/questions") {
            get {
                val questions = ProviderQuestionUseCase.getAllQuestions()
                call.respond(questions)
            }
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }
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
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }
                val questionWithAnswer = ProviderQuestionUseCase.getQuestionWithAnswerById(id)
                if (questionWithAnswer == null) {
                    call.respond(HttpStatusCode.NotFound, "Pregunta con respuestas no encontrada")
                } else {
                    call.respond(questionWithAnswer)
                }
            }
            get("/difficulty/{difficulty}") {
                val difficultyParam = call.parameters["difficulty"]

                runCatching {
                    val difficulty = Difficulty.valueOf(
                        difficultyParam ?: throw IllegalArgumentException()
                    )
                    val questionsWithAnswer = ProviderQuestionUseCase.getQuestionwithAnswerBydifficulty(difficulty)

                    if (questionsWithAnswer.isEmpty()) {
                        call.respond(HttpStatusCode.NotFound, "No se encontraron preguntas con esa dificultad")
                    } else {
                        call.respond(questionsWithAnswer)
                    }
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Dificultad no válida")
                }.getOrNull()
            }
        }
    }
}