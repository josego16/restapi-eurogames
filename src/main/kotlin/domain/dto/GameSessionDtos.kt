package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import domain.enums.SessionStatus
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class GameSessionCreateDto(
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    @Serializable(with = UUIDSerializer::class)
    val gameId: UUID,
    val gameType: GameType,
    val difficulty: Difficulty,
)

@Serializable
data class GameSessionResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    @Serializable(with = UUIDSerializer::class)
    val gameId: UUID,
    val scoreSession: Double,
    val gameType: GameType,
    val difficulty: Difficulty,
    val status: SessionStatus,
    val startedAt: Long,
    val finishedAt: Long? = null
)

@Serializable
data class GameSessionFinishDto(
    val actions: List<ActionDto>
)

@Serializable
data class ActionDto(
    val actionType: String,
    val value: String,
    val timestamp: Long
)