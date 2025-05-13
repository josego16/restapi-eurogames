package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class FilterCountriesUseCase(private val repository: CountryInterface) {
    suspend operator fun invoke(
        region: String? = null,
        subregion: String? = null,
        min: Long? = null,
        max: Long? = null,
    ): List<CountryResponseDto> {
        return repository.filterCountries(region, subregion, min, max).map { it.toResponseDto() }
    }
}