package ktor.routes

import domain.usecase.answers.ProviderAnswersUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con las respuestas posibles a las preguntas.
 *
 * Todas las rutas están protegidas mediante autenticación JWT.
 *
 * ### Rutas (`/answers`)
 * - `GET /answers`: Devuelve todas las respuestas disponibles.
 * - `GET /answers/{id}`: Devuelve una respuesta específica por ID.
 * - `GET /answers/isCorrect?questionId={qid}&answerId={aid}`: Verifica si una respuesta es correcta para una pregunta.
 */
fun Routing.answerRouting() {
    authenticate("jwt-auth") {
        route("/answers") {

            /**
             * Endpoint: GET /answers
             * Devuelve una lista con todas las respuestas existentes en la base de datos.
             */
            get {
                val answers = ProviderAnswersUseCase.getAllAnswers()
                call.respond(answers)
            }

            /**
             * Endpoint: GET /answers/{id}
             * Devuelve una respuesta específica por su ID.
             *
             * Devuelve 400 si el ID no es válido.
             * Devuelve 404 si la respuesta no se encuentra.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }
                val answer = ProviderAnswersUseCase.getAnswerById(id)
                if (answer == null) {
                    call.respond(HttpStatusCode.NotFound, "Respuesta no encontrada")
                } else {
                    call.respond(answer)
                }
            }

            /**
             * Endpoint: GET /answers/isCorrect
             * Verifica si una respuesta es correcta para una pregunta específica.
             *
             * @queryParam questionId ID de la pregunta.
             * @queryParam answerId ID de la respuesta.
             *
             * Devuelve 400 si alguno de los parámetros es inválido.
             * Devuelve 200 con un JSON indicando si la respuesta es correcta.
             *
             * Ejemplo de respuesta:
             * ```json
             * { "isCorrect": true }
             * ```
             */
            get("/isCorrect") {
                val questionIdParam = call.parameters["questionId"]
                val answerIdParam = call.parameters["answerId"]

                val questionId = questionIdParam?.toIntOrNull()
                val answerId = answerIdParam?.toIntOrNull()

                if (questionId == null || answerId == null) {
                    call.respond(HttpStatusCode.BadRequest, "Parámetros inválidos")
                    return@get
                }

                val isCorrect = ProviderAnswersUseCase.isAnswerCorrect(questionId, answerId)
                call.respond(HttpStatusCode.OK, mapOf("isCorrect" to isCorrect))
            }
        }
    }
}