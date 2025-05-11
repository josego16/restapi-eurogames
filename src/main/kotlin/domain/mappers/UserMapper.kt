package domain.mappers

import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.models.User

fun UserRegisterDto.toModel(): User = User(
    name = name,
    username = username,
    email = email,
    password = password,
    avatar = avatar
)

fun User.toResponseDto(): UserResponseDto = UserResponseDto(
    id = id,
    name = name,
    username = username,
    email = email,
    avatar = avatar ?: ""
)

fun UserUpdateDto.toModel(existing: User): User = existing.copy(
    name = name,
    username = username,
    email = email
)