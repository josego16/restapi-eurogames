package domain.usecase.country

import data.repositories.CountryRepositoryImpl
import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import java.util.*

object ProviderCountryUseCase {
    private val repository: CountryInterface = CountryRepositoryImpl()

    private val getAllCountriesUseCase = GetAllCountriesUseCase(repository)
    private val getCountryByIdUseCase = GetCountryByIdUseCase(repository)
    private val filterCountriesUseCase = FilterCountriesUseCase(repository)
    private val sortCountriesUseCase = SortCountriesUseCase(repository)
    private val searchCountriesUseCase = SearchCountriesUseCase(repository)

    suspend fun getAllCountries(): List<CountryResponseDto> = getAllCountriesUseCase()
    suspend fun getCountryById(id: UUID): CountryDetailDto? = getCountryByIdUseCase(id)
    suspend fun filterCountries(region: String?, subregion: String?, min: Long?, max: Long?): List<CountryResponseDto> {
        return filterCountriesUseCase(region, subregion, min, max)
    }

    suspend fun sortedCountries(sortBy: String?, descending: Boolean): List<CountryResponseDto> {
        return sortCountriesUseCase(sortBy, descending)
    }

    suspend fun searchCountries(text: String?): List<CountryResponseDto> {
        return searchCountriesUseCase(text)
    }
}