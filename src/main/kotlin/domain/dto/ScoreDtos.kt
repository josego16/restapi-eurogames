package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class ScoreCreateDto(
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    @Serializable(with = UUIDSerializer::class)
    val gameId: UUID,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty
)
@Serializable
data class ScoreResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,
    @Serializable(with = UUIDSerializer::class)
    val gameId: UUID,
    val scoreValue: Double,
    val gameType: GameType,
    val difficulty: Difficulty
)