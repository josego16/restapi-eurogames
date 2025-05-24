package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerInterface
import domain.mappers.toResponseDto

class GetAnswersByIdUseCase(private val repository: AnswerInterface) {
    suspend operator fun invoke(id: Int): AnswerResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}