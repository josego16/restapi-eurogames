package domain.enums

import kotlinx.serialization.Serializable

/**
 * Enum que representa los niveles de dificultad de una pregunta o juego.
 */
@Serializable
enum class Difficulty {
    /** Nivel fácil. */
    Facil,

    /** Nivel normal. */
    Normal,

    /** Nivel difícil. */
    Dificil
}