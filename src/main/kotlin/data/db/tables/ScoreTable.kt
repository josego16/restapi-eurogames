package data.db.tables

import domain.enums.Difficulty
import domain.enums.GameType
import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de puntuaciones en la base de datos.
 * Almacena los resultados de los usuarios en los diferentes juegos.
 */
object ScoreTable : IntIdTable("score") {
    /** Referencia al usuario que obtuvo la puntuación. */
    val userId = reference("user_id", UserTable)

    /** Referencia al juego asociado. */
    val gameId = reference("game_id", GameTable)

    /** Valor de la puntuación obtenida. */
    val scoreValue = double("score_value")

    /** Tipo de juego. */
    val gameType = enumerationByName("game_type", 50, GameType::class)

    /** Dificultad del juego. */
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)

    /** Número de respuestas correctas. */
    val correctAnswers = integer("correct_answers")

    /** Número de respuestas incorrectas. */
    val wrongAnswers = integer("wrong_answers")

    /** Número total de preguntas. */
    val totalQuestions = integer("total_questions")
}