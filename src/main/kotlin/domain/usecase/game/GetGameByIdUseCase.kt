package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener los detalles de un juego específico por su ID.
 *
 * @property repository Repositorio que gestiona el acceso a los datos de juego.
 */
class GetGameByIdUseCase(private val repository: GameRepository) {

    /**
     * Invoca el caso de uso para recuperar un juego por su identificador único.
     *
     * @param id Identificador del juego.
     * @return Un [GameResponseDto] si el juego existe, o `null` si no se encuentra.
     */
    suspend operator fun invoke(id: Int): GameResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}