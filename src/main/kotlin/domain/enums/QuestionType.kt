package domain.enums

import kotlinx.serialization.Serializable

/**
 * Enum que representa los tipos de pregunta disponibles.
 */
@Serializable
enum class QuestionType {
    /** Pregunta sobre banderas. */
    Banderas,

    /** Pregunta sobre escudos. */
    Escudos,

    /** Pregunta sobre historia. */
    Historia,

    /** Pregunta sobre geografía. */
    Geografia,

    /** Pregunta sobre deportes. */
    Deportes,

    /** Pregunta sobre mitología. */
    Mitologia,

    /** Pregunta de conocimiento general. */
    Conocimiento_general
}