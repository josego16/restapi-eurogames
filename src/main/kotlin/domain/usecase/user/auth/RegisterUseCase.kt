package domain.usecase.user.auth

import domain.auth.JwtConfig
import domain.auth.PasswordInterface
import domain.dto.AuthResponseDto
import domain.dto.UserRegisterDto
import domain.interfaces.UserInterface
import domain.mappers.toModel
import domain.mappers.toResponseDto

class RegisterUseCase(
    private val repository: UserInterface,
    private val hasher: PasswordInterface,
    private val jwt: JwtConfig
) {
    suspend operator fun invoke(dto: UserRegisterDto): AuthResponseDto? {
        val userExists = repository.findByUsername(dto.username) != null
        if (userExists) return null

        val hashedPassword = hasher.hash(dto.password)
        val newUser = dto.toModel().copy(password = hashedPassword)
        val createdUser = repository.create(newUser)

        val token = jwt.generateToken(createdUser.id)

        return AuthResponseDto(
            token = token,
            user = createdUser.toResponseDto()
        )
    }
}