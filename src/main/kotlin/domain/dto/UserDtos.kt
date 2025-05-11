package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class UserResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID? = null,
    val name: String,
    val username: String,
    val email: String,
    val avatar: String?
)

@Serializable
data class UserRegisterDto(
    val name: String,
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
    val name: String,
    val username: String,
    val email: String,
)

@Serializable
data class AuthResponseDto(
    val token: String,
    val user: UserResponseDto
)