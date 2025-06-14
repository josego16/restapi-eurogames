package domain.usecase.score

import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toDomain
import domain.mappers.toResponseDto

/**
 * Caso de uso para crear un nuevo score.
 *
 * Convierte el DTO recibido a dominio y lo almacena en el repositorio.
 *
 * @property repository Repositorio de puntuaciones.
 */
class CreateScoreUseCase(private val repository: ScoreRepository) {

    /**
     * Invoca la creación de una nueva puntuación.
     *
     * @param dto DTO con los datos de la puntuación.
     * @return [ScoreResponseDto] con la puntuación creada.
     */
    suspend operator fun invoke(dto: ScoreCreateDto): ScoreResponseDto {
        val score = dto.toDomain()
        val created = repository.createScores(score)
        return created.toResponseDto()
    }
}