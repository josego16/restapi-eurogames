package domain.models

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import kotlinx.serialization.Serializable

/**
 * Modelo que representa una pregunta del sistema.
 *
 * @property id Identificador único de la pregunta.
 * @property statement Enunciado de la pregunta.
 * @property questionType Tipo de la pregunta.
 * @property responseMode Modo de respuesta permitido.
 * @property difficulty Dificultad de la pregunta.
 * @property flagUrl URL de la bandera asociada, si existe.
 * @property coatUrl URL del escudo asociado, si existe.
 */
@Serializable
data class Question(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null
)