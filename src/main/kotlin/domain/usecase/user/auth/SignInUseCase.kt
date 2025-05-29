package domain.usecase.user.auth

import domain.auth.JwtConfig
import domain.auth.PasswordInterface
import domain.dto.AuthResponseDto
import domain.dto.UserLoginDto
import domain.interfaces.UserRepository
import domain.mappers.toResponseDto

class SignInUseCase(
    private val repository: UserRepository,
    private val hasher: PasswordInterface,
    private val jwt: JwtConfig
) {
    suspend operator fun invoke(dto: UserLoginDto): AuthResponseDto? {
        val user = repository.findByUsername(dto.username) ?: run {
            println("[LOGIN] Usuario no encontrado: ${dto.username}")
            return null
        }
        val isPasswordValid = hasher.verify(dto.password, user.password)
        if (!isPasswordValid) {
            println("[LOGIN] Contraseña incorrecta para usuario: ${dto.username}")
            return null
        }
        val token = jwt.generateToken(user.id)
        println("[LOGIN] Token generado correctamente para usuario: ${dto.username}")
        return AuthResponseDto(
            user = user.toResponseDto(),
            token = token
        )
    }
}