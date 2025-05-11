package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserInterface
import domain.mappers.toResponseDto

class GetAllUsersUseCase(private val repository: UserInterface) {
    suspend operator fun invoke(): List<UserResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}