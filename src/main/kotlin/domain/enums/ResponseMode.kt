package domain.enums

import kotlinx.serialization.Serializable

/**
 * Enum que representa los modos de respuesta posibles para una pregunta.
 */
@Serializable
enum class ResponseMode {
    /** Respuesta de verdadero o falso. */
    Verdadero_falso,

    /** Respuesta de opción múltiple. */
    Opcion_multiple,

    /** Respuesta de texto libre. */
    Texto_libre
}