package domain.usecase.gamesession

import data.repositories.GameSessionRepositoryImpl
import data.repositories.ScoreRepositoryImpl
import domain.dto.ActionDto
import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.dto.ScoreResponseDto
import domain.interfaces.GameSessionInterface
import domain.interfaces.ScoreInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderGameSessionUseCase {
    private val logger: Logger = LoggerFactory.getLogger("GameSessionUseCaseLogger")
    private val gameSessionRepository: GameSessionInterface = GameSessionRepositoryImpl()
    private val scoreRepository: ScoreInterface = ScoreRepositoryImpl()

    // Casos de uso
    private val getAllGameSessionsUseCase = GetAllGameSessionsUseCase(gameSessionRepository)
    private val getGameSessionByIdUseCase = GetGameSessionByIdUseCase(gameSessionRepository)
    private val startGameSessionUseCase = StartGameSessionUseCase(gameSessionRepository)
    private val finishGameSessionUseCase = FinishGameSessionUseCase(gameSessionRepository, scoreRepository)

    // Métodos públicos
    suspend fun getAllGameSessions(): List<GameSessionResponseDto> = getAllGameSessionsUseCase()

    suspend fun getGameSessionById(id: UUID): GameSessionResponseDto? =
        getGameSessionByIdUseCase(id)

    suspend fun startGameSession(dto: GameSessionCreateDto): GameSessionResponseDto =
        startGameSessionUseCase(dto)

    suspend fun finishGameSession(sessionId: UUID, actions: List<ActionDto>): ScoreResponseDto =
        finishGameSessionUseCase(sessionId, actions)
}