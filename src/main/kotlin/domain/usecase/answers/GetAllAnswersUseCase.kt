package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerInterface
import domain.mappers.toResponseDto

class GetAllAnswersUseCase(private val repository: AnswerInterface) {
    suspend operator fun invoke(): List<AnswerResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}