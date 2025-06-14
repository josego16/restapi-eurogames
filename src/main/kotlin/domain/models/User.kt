package domain.models

import kotlinx.serialization.Serializable

/**
 * Modelo que representa un usuario de la plataforma.
 *
 * @property id Identificador único del usuario.
 * @property fullName Nombre completo del usuario.
 * @property username Nombre de usuario.
 * @property email Correo electrónico del usuario.
 * @property password Contraseña del usuario.
 * @property avatar URL del avatar del usuario, si existe.
 */
@Serializable
data class User(
    var id: Int = 0,
    var fullName: String,
    var username: String,
    var email: String,
    var password: String,
    var avatar: String? = null
)