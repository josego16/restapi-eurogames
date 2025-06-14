package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener un usuario por su ID.
 *
 * @property repository Repositorio para acceder a los usuarios.
 */
class GetUserByIdUseCase(private val repository: UserRepository) {
    /**
     * Invoca la operación para recuperar un usuario específico por ID.
     *
     * @param id Identificador del usuario.
     * @return [UserResponseDto] si se encuentra, o `null`.
     */
    suspend operator fun invoke(id: Int): UserResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}