package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Score(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID, // id del usuario

    // Datos
    val scoreValue: Double, //puntuacion obtenida
    val gameType: GameType, //tipo del juego
    val difficulty: Difficulty //dificultad
)