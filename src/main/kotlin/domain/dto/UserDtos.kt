package domain.dto

import kotlinx.serialization.Serializable

@Serializable
data class UserResponseDto(
    var id: Int,
    val fullName: String,
    val username: String,
    val email: String,
    val avatar: String?
)

@Serializable
data class UserRegisterDto(
    val fullName: String,
    val username: String,
    val email: String,
    val password: String,
    val avatar: String? = null
)

@Serializable
data class UserLoginDto(
    val username: String,
    val password: String,
)

@Serializable
data class UserUpdateDto(
    val fullName: String? = null,
    val username: String? = null,
    val email: String? = null,
    val avatar: String? = null,
    val password: String? = null
)

@Serializable
data class AuthResponseDto(
    val user: UserResponseDto,
    val token: String
)