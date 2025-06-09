package domain.usecase.gamesession

import data.repositories.GameSessionRepositoryImpl
import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.enums.SessionStatus
import domain.interfaces.GameSessionRepository

object ProviderGameSessionUseCase {
    private val repository: GameSessionRepository = GameSessionRepositoryImpl()

    private val getAllGameSessionsUseCase = GetAllGameSessionsUseCase(repository)
    private val getGameSessionByIdUseCase = GetGameSessionByIdUseCase(repository)
    private val getGameSessionsByUserIdUseCase = GetGameSessionsByUserIdUseCase(repository)
    private val createGameSessionUseCase = CreateGameSessionUseCase(repository)
    private val updateGameSessionUseCase = UpdateGameSessionUseCase(repository)
    private val updateGameSessionStatusUseCase = UpdateGameSessionStatusUseCase(repository)

    suspend fun getAllGameSessions(): List<GameSessionResponseDto> = getAllGameSessionsUseCase()
    suspend fun getGameSessionById(id: Int): GameSessionResponseDto? = getGameSessionByIdUseCase(id)

    suspend fun getGameSessionsByUserId(userId: Int): List<GameSessionResponseDto> {
        return getGameSessionsByUserIdUseCase(userId)
    }

    suspend fun createGameSession(sessionCreateDto: GameSessionCreateDto): GameSessionResponseDto {
        return createGameSessionUseCase(sessionCreateDto)
    }

    suspend fun updateGameSession(id: Int, session: domain.models.GameSession): GameSessionResponseDto? {
        return updateGameSessionUseCase(id, session)
    }

    suspend fun updateGameSessionStatus(sessionId: Int, status: SessionStatus): Boolean {
        return updateGameSessionStatusUseCase(sessionId, status)
    }
}