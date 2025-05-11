package domain.usecase.language

import domain.dto.LanguageResponseDto
import domain.interfaces.LanguageInterface
import domain.mappers.toResponseDto
import java.util.*

class GetLanguageByIdUseCase (private val repository: LanguageInterface) {
    suspend operator fun invoke(id: UUID): LanguageResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}