package domain.usecase.user

import data.repositories.UserRepositoryImpl
import domain.auth.JwtConfig
import domain.auth.PasswordHash
import domain.auth.PasswordInterface
import domain.dto.*
import domain.interfaces.UserRepository
import domain.usecase.user.auth.SignInUseCase
import domain.usecase.user.auth.SignUpUseCase

/**
 * Clase que agrupa y provee acceso a los casos de uso relacionados con [domain.models.User].
 *
 * Facilita la inyección y organización centralizada de lógica de negocio.
 */
object ProviderUserUseCase {
    private val repository: UserRepository = UserRepositoryImpl()
    private val jwt: JwtConfig = JwtConfig
    private val hasher: PasswordInterface = PasswordHash

    private val getAllUsersUseCase = GetAllUsersUseCase(repository)
    private val getUserByIdUseCase = GetUserByIdUseCase(repository)
    private val signInUseCase = SignInUseCase(repository, hasher, jwt)
    private val signUpUseCase = SignUpUseCase(repository, hasher)
    private val updateUserUseCase = UpdateUserUseCase(repository)

    suspend fun getAllUsers(): List<UserResponseDto> = getAllUsersUseCase()
    suspend fun getUserById(id: Int): UserResponseDto? = getUserByIdUseCase(id)
    suspend fun login(dto: UserLoginDto): AuthResponseDto? = signInUseCase(dto)
    suspend fun register(dto: UserRegisterDto): UserResponseDto? = signUpUseCase(dto)
    suspend fun updateUser(id: Int, dto: UserUpdateDto): UserResponseDto? = updateUserUseCase(id, dto)
}