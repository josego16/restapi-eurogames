package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserRepository
import domain.mappers.toResponseDto

class GetUserByIdUseCase(private val repository: UserRepository) {
    suspend operator fun invoke(id: Int): UserResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}