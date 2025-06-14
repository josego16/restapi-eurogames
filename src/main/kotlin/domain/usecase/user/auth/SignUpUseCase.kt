package domain.usecase.user.auth

import domain.auth.PasswordInterface
import domain.dto.UserRegisterDto
import domain.dto.UserResponseDto
import domain.interfaces.UserRepository
import domain.mappers.toModel
import domain.mappers.toResponseDto

/**
 * Caso de uso para registrar un nuevo usuario.
 *
 * Verifica si el nombre de usuario ya existe y, si no, crea un nuevo usuario con la contraseña hasheada.
 *
 * @property repository Repositorio para acceder a los usuarios.
 * @property hasher Utilidad para hashear contraseñas.
 */
class SignUpUseCase(
    private val repository: UserRepository,
    private val hasher: PasswordInterface,
) {
    /**
     * Invoca el proceso de registro de usuario.
     *
     * @param dto Datos de registro del usuario.
     * @return [UserResponseDto] del usuario creado, o `null` si el nombre de usuario ya existe.
     */
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