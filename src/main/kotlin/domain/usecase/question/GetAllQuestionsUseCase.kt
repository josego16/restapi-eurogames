package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionRepository
import domain.mappers.toResponseDto

class GetAllQuestionsUseCase(private val repository: QuestionRepository) {
    suspend operator fun invoke(): List<QuestionResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}