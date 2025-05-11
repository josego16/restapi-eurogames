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
    val name: String, //nombre
    val gameType: GameType, //tipo de juego
    val difficulty: Difficulty, //dificultad
    val playFor: List<User> = emptyList(), //jugado por
    val imageUrl: String? = null, //url imagen
    val description: String //descripcion del minijuego
)