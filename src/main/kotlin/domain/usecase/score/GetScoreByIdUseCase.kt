package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener una puntuación por su ID.
 *
 * @property repository Repositorio de puntuaciones.
 */
class GetScoreByIdUseCase(private val repository: ScoreRepository) {
    /**
     * Invoca la operación para recuperar una puntuación específica.
     *
     * @param id Identificador de la puntuación.
     * @return [ScoreResponseDto] o `null` si no se encuentra.
     */

    suspend operator fun invoke(id: Int): ScoreResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}