package data.db.tables

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de preguntas en la base de datos.
 * Almacena las preguntas y su información asociada.
 */
object QuestionTable : IntIdTable("question") {
    /** Enunciado de la pregunta. */
    val statement = text("statement")

    /** Tipo de pregunta. */
    val questionType = enumerationByName("question_type", 50, QuestionType::class)

    /** Modo de respuesta de la pregunta. */
    val responseMode = enumerationByName("response_mode", 50, ResponseMode::class)

    /** Dificultad de la pregunta. */
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)

    /** URL de la bandera asociada a la pregunta. */
    val flagUrl = varchar("flag_url", 512).nullable()

    /** URL del escudo asociado a la pregunta. */
    val coatUrl = varchar("coat_url", 512).nullable()
}