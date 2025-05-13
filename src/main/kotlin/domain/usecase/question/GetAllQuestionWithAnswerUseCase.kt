package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionInterface
import domain.mappers.toDto

class GetAllQuestionWithAnswerUseCase(private val repository: QuestionInterface) {
    suspend operator fun invoke(): List<QuestionWithAnswersDto> {
        return repository.getAllQuestionWithAnswers().map { it.toDto() }
    }
}