package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserInterface
import domain.mappers.toResponseDto

class GetUserByIdUseCase(private val repository: UserInterface) {
    suspend operator fun invoke(id: Int): UserResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}