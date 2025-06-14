package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import kotlinx.serialization.Serializable

/**
 * DTO utilizado para crear un nuevo registro de puntuación.
 *
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
data class ScoreCreateDto(
    val userId: Int,
    val gameId: Int,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty,
    val correctAnswers: Int,
    val wrongAnswers: Int,
    val totalQuestions: Int
)

/**
 * DTO que representa la información de una puntuación registrada.
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
data class ScoreResponseDto(
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