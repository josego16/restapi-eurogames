package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

class GetQuestionWithAnswerByIdUseCase(private val repository: QuestionRepository) {
    suspend operator fun invoke(id: Int): QuestionWithAnswersDto? {
        return repository.getQuestionWithAnswersById(id)?.toDto()
    }
}