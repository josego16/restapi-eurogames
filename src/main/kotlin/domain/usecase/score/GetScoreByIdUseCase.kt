package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreInterface
import domain.mappers.toResponseDto
import java.util.*

class GetScoreByIdUseCase(private val repository: ScoreInterface) {
    suspend operator fun invoke(id: UUID): ScoreResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}