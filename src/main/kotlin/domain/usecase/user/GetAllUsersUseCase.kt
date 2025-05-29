package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserRepository
import domain.mappers.toResponseDto

class GetAllUsersUseCase(private val repository: UserRepository) {
    suspend operator fun invoke(): List<UserResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}