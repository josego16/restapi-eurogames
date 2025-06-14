package data.db.tables

import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de respuestas en la base de datos.
 * Almacena las posibles respuestas para cada pregunta.
 */
object AnswerTable : IntIdTable("answer") {
    /** Referencia a la pregunta asociada. */
    val questionId = reference("question_id", QuestionTable)

    /** Texto de la respuesta. */
    val text = text("text")

    /** Indica si la respuesta es correcta. */
    val isCorrect = bool("is_correct")
}