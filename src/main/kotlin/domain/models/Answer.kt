package domain.models

import kotlinx.serialization.Serializable

/**
 * Modelo que representa una respuesta posible a una pregunta.
 *
 * @property id Identificador único de la respuesta.
 * @property questionId Identificador de la pregunta asociada.
 * @property text Texto de la respuesta.
 * @property isCorrect Indica si la respuesta es la correcta.
 */
@Serializable
data class Answer(
    var id: Int,
    val questionId: Int,
    val text: String,
    val isCorrect: Boolean
)