package domain.usecase.language

import domain.dto.LanguageResponseDto
import domain.interfaces.LanguageInterface
import domain.mappers.toResponseDto

class GetAllLanguagesUseCase (private val repository: LanguageInterface) {
    suspend operator fun invoke(): List<LanguageResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}