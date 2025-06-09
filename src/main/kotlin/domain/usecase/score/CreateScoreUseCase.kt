package domain.usecase.score

import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository
import domain.mappers.toDomain
import domain.mappers.toResponseDto

class CreateScoreUseCase(private val repository: ScoreRepository) {
    suspend operator fun invoke(dto: ScoreCreateDto): ScoreResponseDto {
        val score = dto.toDomain()
        val created = repository.createScores(score)
        return created.toResponseDto()
    }
}