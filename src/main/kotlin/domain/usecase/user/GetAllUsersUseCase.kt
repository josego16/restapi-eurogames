package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener la lista de todos los usuarios registrados.
 *
 * @property repository Repositorio para acceder a los usuarios.
 */
class GetAllUsersUseCase(private val repository: UserRepository) {

    /**
     * Invoca la operación para recuperar todos los usuarios.
     *
     * @return Lista de [UserResponseDto].
     */
    suspend operator fun invoke(): List<UserResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}