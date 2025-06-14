package domain.models

import domain.enums.GameType
import kotlinx.serialization.Serializable

/**
 * Modelo que representa un juego disponible en la plataforma.
 *
 * @property id Identificador único del juego.
 * @property name Nombre del juego.
 * @property gameType Tipo de juego.
 * @property imageUrl URL de la imagen asociada al juego, si existe.
 * @property description Descripción del juego, si existe.
 */
@Serializable
data class Game(
    var id: Int,
    val name: String,
    val gameType: GameType,
    val imageUrl: String? = null,
    val description: String? = null
)