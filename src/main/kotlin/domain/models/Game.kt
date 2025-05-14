package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Game(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),

    // Datos
    val name: String,
    val gameType: GameType,
    val difficulty: Difficulty,
    val imageUrl: String? = null,
    val description: String? = null
)