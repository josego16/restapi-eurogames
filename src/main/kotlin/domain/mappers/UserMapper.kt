package domain.mappers

import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.models.User

/**
 * Convierte un modelo [User] a un [UserResponseDto].
 * @receiver User a convertir
 * @return [UserResponseDto] con los datos del usuario
 */
fun User.toResponseDto(): UserResponseDto = with(this) {
    UserResponseDto(
        id = id,
        fullName = fullName,
        username = username,
        email = email,
        avatar = avatar ?: ""
    )
}

/**
 * Convierte un [UserRegisterDto] a un modelo de dominio [User].
 * @receiver UserRegisterDto a convertir
 * @return [User] con los datos del registro
 */
fun UserRegisterDto.toModel(): User = with(this) {
    User(
        fullName = fullName,
        username = username,
        email = email,
        password = password,
        avatar = avatar ?: ""
    )
}
/**
 * Convierte un [UserUpdateDto] a un modelo de dominio [User] usando los datos existentes.
 * @receiver UserUpdateDto a convertir
 * @param existing Usuario existente cuyos datos se actualizarán
 * @return [User] actualizado
 */
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