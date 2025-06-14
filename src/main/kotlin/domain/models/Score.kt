package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import kotlinx.serialization.Serializable

/**
 * Modelo que representa una puntuación registrada por un usuario en un juego.
 *
 * @property id Identificador único de la puntuación.
 * @property userId Identificador del usuario.
 * @property gameId Identificador del juego.
 * @property scoreValue Valor de la puntuación obtenida.
 * @property gameType Tipo de juego.
 * @property difficulty Dificultad del juego.
 * @property correctAnswers Número de respuestas correctas.
 * @property wrongAnswers Número de respuestas incorrectas.
 * @property totalQuestions Número total de preguntas respondidas.
 */
@Serializable
data class Score(
    var id: Int,
    val userId: Int,
    val gameId: Int,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty,
    val correctAnswers: Int,
    val wrongAnswers: Int,
    val totalQuestions: Int
)