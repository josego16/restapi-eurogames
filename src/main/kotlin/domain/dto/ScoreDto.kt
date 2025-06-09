package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import kotlinx.serialization.Serializable

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