package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionInterface
import domain.mappers.toResponseDto

class GetQuestionByIdUseCase (private val repository: QuestionInterface) {
    suspend operator fun invoke(id: Int): QuestionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}