package domain.models

import domain.enums.Difficulty
import domain.enums.GameType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class GameSession(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val userId: UUID,//id usuario

    // Datos
    val scoreSession: Double, //puntuacion
    val difficulty: Difficulty, //dificultad
    val gameType: GameType //tipo de juego
)