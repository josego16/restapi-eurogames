package domain.usecase.user

import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.interfaces.UserInterface
import domain.mappers.toResponseDto
import java.util.*

class UpdateUserUseCase(private val repository: UserInterface) {
    suspend operator fun invoke(id: UUID, dto: UserUpdateDto): UserResponseDto? {
        val user = repository.getById(id) ?: return null
        val updateUser = user.copy(
            name = dto.name,
            username = dto.username,
            email = dto.email,
        )
        val savedUser = repository.update(id, updateUser)
        return savedUser?.toResponseDto()
    }
}