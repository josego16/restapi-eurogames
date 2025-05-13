package domain.usecase.user.auth

import domain.auth.JwtConfig
import domain.auth.PasswordInterface
import domain.dto.AuthResponseDto
import domain.dto.UserLoginDto
import domain.interfaces.UserInterface
import domain.mappers.toResponseDto

class LoginUseCase(
    private val repository: UserInterface,
    private val hasher: PasswordInterface,
    private val jwt: JwtConfig
) {
    suspend operator fun invoke(dto: UserLoginDto): AuthResponseDto? {
        val user = repository.findByUsername(dto.username) ?: return null

        println("Intentando login para: ${dto.username}")
        println("Contraseña enviada: ${dto.password}")
        println("Contraseña hasheada en base de datos: ${user.password}")

        val isPasswordValid = hasher.verify(dto.password, user.password)
        println("¿Contraseña valida?: $isPasswordValid")
        if (!isPasswordValid) return null

        val token = jwt.generateToken(user.id)

        return AuthResponseDto(
            user = user.toResponseDto(),
            token = token
        )
    }
}