package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionInterface
import domain.mappers.toResponseDto
import java.util.*

class GetQuestionByIdUseCase (private val repository: QuestionInterface) {
    suspend operator fun invoke(id: UUID): QuestionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}