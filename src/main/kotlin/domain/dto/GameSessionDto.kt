package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import domain.enums.SessionStatus
import kotlinx.serialization.Serializable

@Serializable
data class GameSessionCreateDto(
    val gameId: Int,
    val gameType: GameType,
    val difficulty: Difficulty,
)

@Serializable
data class GameSessionResponseDto(
    val id: Int,
    val userId: Int,
    val gameId: Int,
    val scoreSession: Double,
    val gameType: GameType,
    val difficulty: Difficulty,
    val status: SessionStatus,
    val startedAt: Long,
    val finishedAt: Long? = null
)