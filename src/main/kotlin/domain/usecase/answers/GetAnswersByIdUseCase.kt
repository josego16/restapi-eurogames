package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerInterface
import domain.mappers.toResponseDto
import java.util.*

class GetAnswersByIdUseCase(private val repository: AnswerInterface) {
    suspend operator fun invoke(id: UUID): AnswerResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}