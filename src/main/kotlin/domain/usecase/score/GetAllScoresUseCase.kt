package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreInterface
import domain.mappers.toResponseDto

class GetAllScoresUseCase (private val repository: ScoreInterface) {
    suspend operator fun invoke(): List<ScoreResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}