package domain.usecase.gamesession

import data.repositories.GameSessionRepositoryImpl
import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.enums.SessionStatus
import domain.interfaces.GameSessionInterface

object ProviderGameSessionUseCase {
    private val repository: GameSessionInterface = GameSessionRepositoryImpl()

    private val getAllGameSessionsUseCase = GetAllGameSessionsUseCase(repository)
    private val getGameSessionByIdUseCase = GetGameSessionByIdUseCase(repository)
    private val createGameSessionUseCase = CreateGameSessionUseCase(repository)
    private val updateGameSessionStatusUseCase = UpdateGameSessionStatusUseCase(repository)

    suspend fun getAllGameSessions(): List<GameSessionResponseDto> = getAllGameSessionsUseCase()
    suspend fun getGameSessionById(id: Int): GameSessionResponseDto? = getGameSessionByIdUseCase(id)
    suspend fun createGameSession(sessionCreateDto: GameSessionCreateDto): GameSessionResponseDto =
        createGameSessionUseCase(sessionCreateDto)

    suspend fun updateGameSessionStatus(sessionId: Int, status: SessionStatus): Boolean =
        updateGameSessionStatusUseCase(sessionId, status)
}