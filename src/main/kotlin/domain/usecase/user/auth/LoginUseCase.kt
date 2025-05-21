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
        println("[LOGIN] Buscando usuario: ${dto.username}")
        val user = repository.findByUsername(dto.username) ?: run {
            println("[LOGIN] Usuario no encontrado: ${dto.username}")
            return null
        }

        println("[LOGIN] Usuario encontrado: ${user.username}, verificando contraseña...")
        val isPasswordValid = hasher.verify(dto.password, user.password)
        if (!isPasswordValid) {
            println("[LOGIN] Contraseña incorrecta para usuario: ${dto.username}")
            return null
        }

        println("[LOGIN] Contraseña válida. Generando token para usuario: ${dto.username}")
        val token = jwt.generateToken(user.id)

        println("[LOGIN] Token generado correctamente para usuario: ${dto.username}")
        return AuthResponseDto(
            user = user.toResponseDto(),
            token = token
        )
    }
}