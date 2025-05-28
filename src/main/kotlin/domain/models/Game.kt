package domain.models

import domain.enums.GameType
import kotlinx.serialization.Serializable

@Serializable
data class Game(
    var id: Int,
    val name: String,
    val gameType: GameType,
    val imageUrl: String? = null,
    val description: String? = null
)