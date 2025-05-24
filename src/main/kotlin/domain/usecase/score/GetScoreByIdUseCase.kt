package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreInterface
import domain.mappers.toResponseDto

class GetScoreByIdUseCase(private val repository: ScoreInterface) {
    suspend operator fun invoke(id: Int): ScoreResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}