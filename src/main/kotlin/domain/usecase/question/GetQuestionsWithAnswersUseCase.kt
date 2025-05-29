package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

class GetQuestionsWithAnswersUseCase(private val repository: QuestionRepository) {
    suspend operator fun invoke(): List<QuestionWithAnswersDto> {
        return repository.getAllQuestionWithAnswers().map { it.toDto() }
    }
}