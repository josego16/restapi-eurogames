package domain.usecase.score

import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toResponseDto

class GetAllScoresUseCase (private val repository: ScoreRepository) {
    suspend operator fun invoke(): List<ScoreResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}