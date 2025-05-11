package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionInterface
import domain.mappers.toResponseDto

class GetAllQuestionsUseCase(private val repository: QuestionInterface) {
    suspend operator fun invoke(): List<QuestionResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}