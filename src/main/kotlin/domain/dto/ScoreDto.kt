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
    val difficulty: Difficulty
)
@Serializable
data class ScoreResponseDto(
    var id: Int,
    val userId: Int,
    val gameId: Int,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty
)