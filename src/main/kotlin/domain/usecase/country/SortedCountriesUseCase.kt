package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class SortedCountriesUseCase(private val repository: CountryInterface) {
    suspend operator fun invoke(sorted: String? = null, descending: Boolean): List<CountryResponseDto> {
        return repository.sortedCountries(sorted, descending).map { it.toResponseDto() }
    }
}