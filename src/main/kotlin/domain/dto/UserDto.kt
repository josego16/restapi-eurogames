package domain.dto

import kotlinx.serialization.Serializable

/**
 * DTO que representa la información de un usuario para respuestas de la API.
 *
 * @property id Identificador único del usuario.
 * @property fullName Nombre completo del usuario.
 * @property username Nombre de usuario.
 * @property email Correo electrónico del usuario.
 * @property avatar URL del avatar del usuario, si existe.
 */
@Serializable
data class UserResponseDto(
    var id: Int,
    val fullName: String,
    val username: String,
    val email: String,
    val avatar: String?
)

/**
 * DTO utilizado para el registro de un nuevo usuario.
 *
 * @property fullName Nombre completo del usuario.
 * @property username Nombre de usuario.
 * @property email Correo electrónico del usuario.
 * @property password Contraseña del usuario.
 * @property avatar URL opcional del avatar del usuario.
 */
@Serializable
data class UserRegisterDto(
    val fullName: String,
    val username: String,
    val email: String,
    val password: String,
    val avatar: String? = null
)

/**
 * DTO utilizado para el login de usuario.
 *
 * @property username Nombre de usuario.
 * @property password Contraseña del usuario.
 */
@Serializable
data class UserLoginDto(
    val username: String,
    val password: String,
)

/**
 * DTO utilizado para actualizar los datos de un usuario.
 *
 * Todos los campos son opcionales.
 *
 * @property fullName Nuevo nombre completo.
 * @property username Nuevo nombre de usuario.
 * @property email Nuevo correo electrónico.
 * @property avatar Nueva URL del avatar.
 * @property password Nueva contraseña.
 */
@Serializable
data class UserUpdateDto(
    val fullName: String? = null,
    val username: String? = null,
    val email: String? = null,
    val avatar: String? = null,
    val password: String? = null
)

/**
 * DTO de respuesta de autenticación, contiene el usuario y el token JWT.
 *
 * @property user Usuario autenticado.
 * @property token Token JWT generado.
 */
@Serializable
data class AuthResponseDto(
    val user: UserResponseDto,
    val token: String
)