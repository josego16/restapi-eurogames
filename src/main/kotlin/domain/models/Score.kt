package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import kotlinx.serialization.Serializable

@Serializable
data class Score(
    var id: Int,
    val userId: Int,
    val gameId: Int,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty
)