package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import domain.enums.SessionStatus
import kotlinx.datetime.Instant
import kotlinx.serialization.Serializable

@Serializable
data class GameSession(
    var id: Int,
    var userId: Int,
    var gameId: Int,
    val scoreSession: Double = 0.0,
    val difficulty: Difficulty,
    val gameType: GameType,
    val status: SessionStatus = SessionStatus.In_Progress,
    val startedAt: Instant,
    val finishedAt: Instant? = null
)