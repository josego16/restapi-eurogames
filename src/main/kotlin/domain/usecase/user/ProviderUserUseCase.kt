package domain.usecase.user

import data.repositories.UserRepositoryImpl
import domain.auth.JwtConfig
import domain.auth.PasswordHash
import domain.auth.PasswordInterface
import domain.dto.*
import domain.interfaces.UserInterface
import domain.usecase.user.auth.LoginUseCase
import domain.usecase.user.auth.RegisterUseCase
import domain.usecase.user.auth.UpdateTokenUseCase
import java.util.*

object ProviderUserUseCase {
    private val repository: UserInterface = UserRepositoryImpl()
    private val jwt: JwtConfig = JwtConfig
    private val hasher: PasswordInterface = PasswordHash

    private val getAllUsersUseCase = GetAllUsersUseCase(repository)
    private val getUserByIdUseCase = GetUserByIdUseCase(repository)
    private val loginUseCase = LoginUseCase(repository, hasher, jwt)
    private val registerUseCase = RegisterUseCase(repository, hasher)
    private val updateTokenUseCase = UpdateTokenUseCase(repository, jwt)
    private val updateUserUseCase = UpdateUserUseCase(repository)

    suspend fun getAllUsers(): List<UserResponseDto> = getAllUsersUseCase()
    suspend fun getUserById(id: UUID): UserResponseDto? = getUserByIdUseCase(id)
    suspend fun login(dto: UserLoginDto): AuthResponseDto? = loginUseCase(dto)
    suspend fun register(dto: UserRegisterDto): UserResponseDto? = registerUseCase(dto)
    suspend fun updateUser(id: UUID, dto: UserUpdateDto): UserResponseDto? = updateUserUseCase(id, dto)
}