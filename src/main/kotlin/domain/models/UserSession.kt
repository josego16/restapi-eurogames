package domain.models

import kotlinx.serialization.Serializable

/**
 * Modelo que representa una sesión de usuario activa.
 *
 * @property userId Identificador único del usuario.
 * @property username Nombre de usuario asociado a la sesión.
 */
@Serializable
data class UserSession(
    val userId: Int,
    val username: String
)