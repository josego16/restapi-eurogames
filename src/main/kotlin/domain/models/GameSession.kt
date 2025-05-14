package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import domain.enums.SessionStatus
import domain.utils.serializers.UUIDSerializer
import kotlinx.datetime.Instant
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class GameSession(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    @Serializable(with = UUIDSerializer::class)
    val gameId: UUID,

    // Datos
    val scoreSession: Double = 0.0,
    val difficulty: Difficulty,
    val gameType: GameType,
    val status: SessionStatus = SessionStatus.IN_PROGRESS,
    val startedAt: Instant,
    val finishedAt: Instant? = null
)