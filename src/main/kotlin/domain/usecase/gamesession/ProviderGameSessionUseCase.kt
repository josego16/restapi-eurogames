package domain.usecase.gamesession

import data.repositories.GameSessionRepositoryImpl
import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface

object ProviderGameSessionUseCase {
    private val repository: GameSessionInterface = GameSessionRepositoryImpl()

    private val getAllGameSessionsUseCase = GetAllGameSessionsUseCase(repository)
    private val getGameSessionByIdUseCase = GetGameSessionByIdUseCase(repository)

    suspend fun getAllGameSessions(): List<GameSessionResponseDto> = getAllGameSessionsUseCase()
    suspend fun getGameSessionById(id: Int): GameSessionResponseDto? = getGameSessionByIdUseCase(id)
}