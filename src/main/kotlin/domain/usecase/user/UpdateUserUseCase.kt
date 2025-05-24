package domain.usecase.user

import domain.dto.UserResponseDto
import domain.dto.UserUpdateDto
import domain.interfaces.UserInterface
import domain.mappers.toModel
import domain.mappers.toResponseDto

class UpdateUserUseCase(private val repository: UserInterface) {
    suspend operator fun invoke(id: Int, dto: UserUpdateDto): UserResponseDto? {
        val user = repository.getById(id) ?: return null
        val updateUser = dto.toModel(user)
        val savedUser = repository.update(id, updateUser)
        return savedUser?.toResponseDto()
    }
}