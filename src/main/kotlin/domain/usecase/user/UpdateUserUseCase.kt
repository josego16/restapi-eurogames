package domain.usecase.user

import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.interfaces.UserRepository
import domain.mappers.toModel
import domain.mappers.toResponseDto

/**
 * Caso de uso para actualizar los datos de un usuario.
 *
 * @property repository Repositorio para acceder y modificar usuarios.
 */
class UpdateUserUseCase(private val repository: UserRepository) {
    /**
     * Invoca la operación para actualizar un usuario por su ID.
     *
     * @param id Identificador del usuario.
     * @param dto Datos nuevos del usuario.
     * @return [UserResponseDto] actualizado, o `null` si no se encontró el usuario.
     */
    suspend operator fun invoke(id: Int, dto: UserUpdateDto): UserResponseDto? {
        val user = repository.getById(id) ?: return null
        val updateUser = dto.toModel(user)
        val savedUser = repository.update(id, updateUser)
        return savedUser?.toResponseDto()
    }
}