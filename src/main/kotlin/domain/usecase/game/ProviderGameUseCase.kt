package domain.usecase.game

import data.repositories.GameRepositoryImpl
import domain.dto.GameDetailDto
import domain.dto.GameResponseDto
import domain.interfaces.GameInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderGameUseCase {
    private val repository: GameInterface = GameRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("GameUseCaseLogger")

    private val getAllGamesUseCase = GetAllGamesUseCase(repository)
    private val getGameByIdUseCase = GetGameByIdUseCase(repository)

    suspend fun getAllGames(): List<GameResponseDto> = getAllGamesUseCase()
    suspend fun getGameById(id: UUID): GameDetailDto? {
        return getGameByIdUseCase(id)
    }
}