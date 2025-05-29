package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryRepository
import domain.mappers.toResponseDto

class GetAllCountriesUseCase(private val repository: CountryRepository) {
    suspend operator fun invoke(): List<CountryResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}