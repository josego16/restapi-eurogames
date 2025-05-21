package domain.usecase.game

import data.repositories.GameRepositoryImpl
import domain.dto.GameDetailDto
import domain.dto.GameResponseDto
import domain.interfaces.GameInterface
import java.util.*

object ProviderGameUseCase {
    private val repository: GameInterface = GameRepositoryImpl()

    private val getAllGamesUseCase = GetAllGamesUseCase(repository)
    private val getGameByIdUseCase = GetGameByIdUseCase(repository)

    suspend fun getAllGames(): List<GameResponseDto> = getAllGamesUseCase()
    suspend fun getGameById(id: UUID): GameDetailDto? {
        return getGameByIdUseCase(id)
    }
}