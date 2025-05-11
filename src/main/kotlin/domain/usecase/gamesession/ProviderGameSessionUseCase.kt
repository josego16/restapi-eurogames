package domain.usecase.gamesession
import data.repositories.GameSessionRepositoryImpl
import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderGameSessionUseCase {
    private val repository: GameSessionInterface = GameSessionRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("GameSessionUseCaseLogger")

    private val getAllGameSessionsUseCase = GetAllGameSessionsUseCase(repository)
    private val getGameSessionByIdUseCase = GetGameSessionByIdUseCase(repository)

    suspend fun getAllGameSessions(): List<GameSessionResponseDto> = getAllGameSessionsUseCase()
    suspend fun getGameSessionById(id: UUID): GameSessionResponseDto?{
        return getGameSessionByIdUseCase(id)
    }
}