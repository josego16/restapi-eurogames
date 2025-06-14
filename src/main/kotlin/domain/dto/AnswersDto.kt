package domain.dto

import kotlinx.serialization.Serializable

/**
 * DTO que representa una respuesta posible a una pregunta.
 *
 * Se utiliza para transportar los datos de una respuesta desde el backend hacia el frontend,
 * omitiendo detalles internos de la base de datos.
 *
 * @property id Identificador único de la respuesta.
 * @property questionId Identificador de la pregunta a la que pertenece esta respuesta.
 * @property text Texto o contenido de la respuesta.
 * @property isCorrect Indica si esta respuesta es la correcta para su pregunta.
 */
@Serializable
data class AnswerResponseDto(
    val id: Int,
    val questionId: Int,
    val text: String,
    val isCorrect: Boolean
)