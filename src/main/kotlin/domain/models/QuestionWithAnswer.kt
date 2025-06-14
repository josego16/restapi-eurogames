package domain.models

import kotlinx.serialization.Serializable

/**
 * Modelo que representa una pregunta junto con sus posibles respuestas.
 *
 * @property question Pregunta del sistema.
 * @property answer Lista de respuestas asociadas a la pregunta.
 */
@Serializable
data class QuestionWithAnswer(
    val question: Question,
    val answer: List<Answer>
)