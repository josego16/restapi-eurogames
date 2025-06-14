package domain.dto

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import kotlinx.serialization.Serializable

/**
 * DTO que representa una pregunta para mostrar al usuario.
 *
 * @property id Identificador único de la pregunta.
 * @property statement Enunciado de la pregunta.
 * @property questionType Tipo de la pregunta (por ejemplo: opción múltiple, verdadero/falso).
 * @property responseMode Modo de respuesta permitido.
 * @property difficulty Dificultad de la pregunta.
 * @property flagUrl URL de la bandera asociada, si existe.
 * @property coatUrl URL del escudo asociado, si existe.
 */
@Serializable
data class QuestionResponseDto(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null,
)

/**
 * DTO que representa una pregunta junto con sus posibles respuestas.
 *
 * @property id Identificador único de la pregunta.
 * @property statement Enunciado de la pregunta.
 * @property questionType Tipo de la pregunta.
 * @property responseMode Modo de respuesta permitido.
 * @property difficulty Dificultad de la pregunta.
 * @property flagUrl URL de la bandera asociada, si existe.
 * @property coatUrl URL del escudo asociado, si existe.
 * @property answers Lista de respuestas posibles para la pregunta.
 */
@Serializable
data class QuestionWithAnswersDto(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null,
    val answers: List<AnswerResponseDto>
)