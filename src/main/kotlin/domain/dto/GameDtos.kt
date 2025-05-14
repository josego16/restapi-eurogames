package domain.dto

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class GameResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val name: String,
    val imageUrl: String? = null,
)

@Serializable
data class GameDetailDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val name: String,
    val gameType: GameType,
    val difficulty: Difficulty,
    val imageUrl: String? = null,
    val description: String? = null,
)