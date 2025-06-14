package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener todos los juegos disponibles en el sistema.
 *
 * @property repository Repositorio que gestiona el acceso a los datos de juego.
 */
class GetAllGamesUseCase(private val repository: GameRepository) {

    /**
     * Invoca el caso de uso para recuperar todos los juegos.
     *
     * @return Lista de objetos [GameResponseDto] representando los juegos disponibles.
     */
    suspend operator fun invoke(): List<GameResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}