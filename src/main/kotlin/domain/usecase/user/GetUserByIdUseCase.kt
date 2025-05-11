package domain.usecase.user

import domain.dto.UserResponseDto
import domain.interfaces.UserInterface
import domain.mappers.toResponseDto
import java.util.*

class GetUserByIdUseCase(private val repository: UserInterface) {
    suspend operator fun invoke(id: UUID): UserResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}