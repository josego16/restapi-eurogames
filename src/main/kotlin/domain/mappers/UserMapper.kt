package domain.mappers

import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.models.User

fun UserRegisterDto.toModel(): User = with(this) {
    User(
        fullName = fullName,
        username = username,
        email = email,
        password = password,
        avatar = avatar ?: ""
    )
}

fun UserUpdateDto.toModel(existing: User): User = with(this) {
    User(
        id = existing.id,
        fullName = fullName ?: existing.fullName,
        username = username ?: existing.username,
        email = email ?: existing.email,
        password = password ?: existing.password,
        avatar = avatar ?: existing.avatar
    )
}

fun User.toResponseDto(): UserResponseDto = with(this) {
    UserResponseDto(
        id = id,
        fullName = fullName,
        username = username,
        email = email,
        avatar = avatar ?: ""
    )
}