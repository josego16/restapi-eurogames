package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import kotlinx.serialization.Serializable

@Serializable
data class Game(
    var id: Int,
    val name: String,
    val gameType: GameType,
    val difficulty: Difficulty,
    val imageUrl: String? = null,
    val description: String? = null
)