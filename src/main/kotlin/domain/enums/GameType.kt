package domain.enums

import kotlinx.serialization.Serializable

/**
 * Enum que representa los tipos de juego disponibles.
 */
@Serializable
enum class GameType {
    /** Juego de adivinar banderas. */
    Adivinar_banderas,

    /** Juego tipo quiz. */
    Quiz
}