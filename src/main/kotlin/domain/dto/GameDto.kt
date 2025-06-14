package domain.dto

import domain.enums.GameType
import kotlinx.serialization.Serializable

/**
 * DTO que representa un juego disponible en la plataforma.
 *
 * Este objeto se utiliza para mostrar información de los juegos al usuario, como parte
 * del catálogo o durante la selección de juego antes de iniciar una partida.
 *
 * @property id Identificador único del juego.
 * @property name Nombre del juego.
 * @property gameType Tipo o categoría del juego (por ejemplo: TRIVIA, LOGIC).
 * @property imageUrl URL opcional de una imagen representativa del juego.
 * @property description Descripción opcional del juego o sus reglas.
 */
@Serializable
data class GameResponseDto(
    val id: Int,
    val name: String,
    val gameType: GameType,
    val imageUrl: String? = null,
    val description: String? = null,
)