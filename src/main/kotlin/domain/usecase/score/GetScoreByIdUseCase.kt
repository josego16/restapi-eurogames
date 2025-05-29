package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toResponseDto

class GetScoreByIdUseCase(private val repository: ScoreRepository) {
    suspend operator fun invoke(id: Int): ScoreResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}