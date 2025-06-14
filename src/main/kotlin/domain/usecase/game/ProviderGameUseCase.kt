package domain.usecase.game

import data.repositories.GameRepositoryImpl
import domain.dto.GameResponseDto
import domain.interfaces.GameRepository

/**
 * Clase que agrupa y provee acceso a los casos de uso relacionados con [domain.models.Game].
 *
 * Facilita la inyección y organización centralizada de lógica de negocio para juegos.
 */
object ProviderGameUseCase {
    private val repository: GameRepository = GameRepositoryImpl()

    private val getAllGamesUseCase = GetAllGamesUseCase(repository)
    private val getGameByIdUseCase = GetGameByIdUseCase(repository)

    suspend fun getAllGames(): List<GameResponseDto> = getAllGamesUseCase()
    suspend fun getGameById(id: Int): GameResponseDto? {
        return getGameByIdUseCase(id)
    }
}