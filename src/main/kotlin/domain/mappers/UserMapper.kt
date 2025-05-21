package domain.mappers

import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.models.User

fun UserRegisterDto.toModel(): User = User(
    fullName = fullName,
    username = username,
    email = email,
    password = password,
    avatar = avatar ?:""
)

fun User.toResponseDto(): UserResponseDto = UserResponseDto(
    id = id,
    fullName = fullName,
    username = username,
    email = email,
    avatar = avatar ?: ""
)