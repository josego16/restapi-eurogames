package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class UserResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID? = null,
    val fullName: String,
    val username: String,
    val email: String,
    val avatar: String?
)

@Serializable
data class UserRegisterDto(
    val fullName: String,
    val username: String,
    val password: String,
    val email: String,
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
    val avatar: String? = null
)

@Serializable
data class AuthResponseDto(
    val user: UserResponseDto,
    val token: String
)