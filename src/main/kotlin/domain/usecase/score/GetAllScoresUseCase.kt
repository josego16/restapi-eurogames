package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener todas las puntuaciones.
 *
 * @property repository Repositorio de puntuaciones.
 */
class GetAllScoresUseCase(private val repository: ScoreRepository) {
    /**
     * Invoca la operación para recuperar todas las puntuaciones.
     *
     * @return Lista de [ScoreResponseDto].
     */
    suspend operator fun invoke(): List<ScoreResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }

}