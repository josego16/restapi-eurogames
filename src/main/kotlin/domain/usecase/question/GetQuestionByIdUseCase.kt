package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionRepository
import domain.mappers.toResponseDto

class GetQuestionByIdUseCase (private val repository: QuestionRepository) {
    suspend operator fun invoke(id: Int): QuestionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}