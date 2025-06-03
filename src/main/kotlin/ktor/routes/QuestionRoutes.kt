package ktor.routes

import domain.enums.Difficulty
import domain.enums.QuestionType
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
                val questionsWithAnswer = ProviderQuestionUseCase.getAllQuestionWithAnswer()
                call.respond(questionsWithAnswer)
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
            get("/filter") {
                val difficultyParam = call.request.queryParameters["difficulty"]
                val categoryParam = call.request.queryParameters["category"]

                if (difficultyParam == null && categoryParam == null) {
                    call.respond(HttpStatusCode.BadRequest, "Debes proporcionar al menos un parámetro: 'difficulty', 'category' o ambos.")
                    return@get
                }

                val difficulty = difficultyParam?.let { runCatching { Difficulty.valueOf(it) }.getOrNull() }
                val category = categoryParam?.let { runCatching { QuestionType.valueOf(it) }.getOrNull() }

                if (difficultyParam != null && difficulty == null) {
                    call.respond(HttpStatusCode.BadRequest, "Dificultad no válida")
                    return@get
                }
                if (categoryParam != null && category == null) {
                    call.respond(HttpStatusCode.BadRequest, "Categoría no válida")
                    return@get
                }

                val questionsWithAnswer = ProviderQuestionUseCase.getQuestionwithAnswerBydifficulty(difficulty, category)

                if (questionsWithAnswer.isEmpty()) {
                    call.respond(
                        HttpStatusCode.NotFound,
                        "No se encontraron preguntas con los parámetros proporcionados"
                    )
                } else {
                    call.respond(questionsWithAnswer)
                }
            }
        }
    }
}