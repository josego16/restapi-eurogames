package ktor.routes

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.usecase.question.ProviderQuestionUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con las preguntas y sus respuestas asociadas.
 *
 * Todas las rutas están protegidas mediante autenticación JWT.
 *
 * ### Rutas (`/questions`)
 * - `GET /questions`: Lista todas las preguntas.
 * - `GET /questions/{id}`: Devuelve una pregunta por su ID.
 *
 * ### Rutas (`/questionWithAnswer`)
 * - `GET /questionWithAnswer`: Lista todas las preguntas con sus respuestas asociadas.
 * - `GET /questionWithAnswer/{id}`: Devuelve una pregunta con sus respuestas por ID.
 * - `GET /questionWithAnswer/filter`: Filtra preguntas con respuestas por dificultad y/o categoría.
 */
fun Routing.questionRouting() {
    authenticate("jwt-auth") {
        route("/questions") {

            /**
             * Endpoint: GET /questions
             * Devuelve una lista de todas las preguntas disponibles.
             */
            get {
                val questions = ProviderQuestionUseCase.getAllQuestions()
                call.respond(questions)
            }

            /**
             * Endpoint: GET /questions/{id}
             * Devuelve una pregunta por su ID.
             *
             * Devuelve 400 si el ID no es válido.
             * Devuelve 404 si no se encuentra la pregunta.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
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

            /**
             * Endpoint: GET /questionWithAnswer
             * Devuelve una lista de todas las preguntas con sus respuestas.
             */
            get {
                val questionsWithAnswer = ProviderQuestionUseCase.getAllQuestionWithAnswer()
                call.respond(questionsWithAnswer)
            }

            /**
             * Endpoint: GET /questionWithAnswer/{id}
             * Devuelve una pregunta con sus respuestas por ID.
             *
             * Devuelve 400 si el ID no es válido.
             * Devuelve 404 si no se encuentra la pregunta con respuestas.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }
                val questionWithAnswer = ProviderQuestionUseCase.getQuestionWithAnswerById(id)
                if (questionWithAnswer == null) {
                    call.respond(HttpStatusCode.NotFound, "Pregunta con respuestas no encontrada")
                } else {
                    call.respond(questionWithAnswer)
                }
            }

            /**
             * Endpoint: GET /questionWithAnswer/filter
             * Devuelve una lista filtrada de preguntas con respuestas, según dificultad y/o categoría.
             *
             * @queryParam difficulty Valor opcional: EASY, MEDIUM, HARD.
             * @queryParam category Valor opcional: tipo de pregunta (por ejemplo, TRIVIA, LOGIC, etc.).
             *
             * Devuelve 400 si los parámetros son inválidos.
             * Devuelve 404 si no hay preguntas con los criterios dados.
             */
            get("/filter") {
                val difficultyParam = call.request.queryParameters["difficulty"]
                val categoryParam = call.request.queryParameters["category"]

                if (difficultyParam == null && categoryParam == null) {
                    call.respond(
                        HttpStatusCode.BadRequest,
                        "Debes proporcionar al menos un parámetro: 'difficulty', 'category' o ambos."
                    )
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

                val questionsWithAnswer =
                    ProviderQuestionUseCase.getQuestionwithAnswerBydifficulty(difficulty, category)

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