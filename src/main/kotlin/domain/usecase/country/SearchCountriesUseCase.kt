package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class SearchCountriesUseCase(private val repository: CountryInterface) {
    suspend operator fun invoke(search: String? = null): List<CountryResponseDto> {
        return repository.searchCountries(search).map { it.toResponseDto() }
    }
}