package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerRepository
import domain.mappers.toResponseDto

class GetAllAnswersUseCase(private val repository: AnswerRepository) {
    suspend operator fun invoke(): List<AnswerResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}