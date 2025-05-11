package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class GameSessionCreateDto(
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    val gameType: GameType,
    val difficulty: Difficulty,
)

@Serializable
data class GameSessionResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    val scoreSession: Double,
    val gameType: GameType,
    val difficulty: Difficulty
)