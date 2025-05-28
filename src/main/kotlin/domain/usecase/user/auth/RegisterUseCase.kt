package domain.usecase.user.auth

import domain.auth.PasswordInterface
import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.interfaces.UserInterface
import domain.mappers.toModel
import domain.mappers.toResponseDto

class RegisterUseCase(
    private val repository: UserInterface,
    private val hasher: PasswordInterface,
) {
    suspend operator fun invoke(dto: UserRegisterDto): UserResponseDto? {
        val userExists = repository.findByUsername(dto.username) != null
        if (userExists) {
            println("[REGISTER] Usuario ya existente: ${dto.username}")
            return null
        }

        println("[REGISTER] Usuario no existe, creando usuario...")
        val hashedPassword = hasher.hash(dto.password)
        val newUser = dto.toModel().copy(password = hashedPassword)
        val createdUser = repository.create(newUser)

        println("[REGISTER] Usuario creado correctamente: ${createdUser.username}")
        return createdUser.toResponseDto()
    }
}