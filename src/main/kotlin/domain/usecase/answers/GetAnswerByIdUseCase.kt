package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerRepository
import domain.mappers.toResponseDto

class GetAnswerByIdUseCase(private val repository: AnswerRepository) {
    suspend operator fun invoke(id: Int): AnswerResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}