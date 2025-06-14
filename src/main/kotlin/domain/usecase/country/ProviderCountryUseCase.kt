package domain.usecase.country

import data.repositories.CountryRepositoryImpl
import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.dto.PaginatedResponseDto
import domain.interfaces.CountryRepository

/**
 * Clase que agrupa y provee acceso a los casos de uso relacionados con [domain.models.Country].
 *
 * Facilita la inyección y organización centralizada de lógica de negocio para países.
 */
object ProviderCountryUseCase {
    private val repository: CountryRepository = CountryRepositoryImpl()

    private val getAllCountriesUseCase = GetAllCountriesUseCase(repository)
    private val getCountriesPaginatedUseCase = GetCountriesPaginatedUseCase(repository)
    private val getCountryByIdUseCase = GetCountryByIdUseCase(repository)

    suspend fun getAllCountries(): List<CountryResponseDto> {
        return getAllCountriesUseCase()
    }

    suspend fun getCountriesPaginated(page: Int, size: Int): PaginatedResponseDto<CountryResponseDto> {
        return getCountriesPaginatedUseCase(page, size)
    }

    suspend fun getCountryById(id: Int): CountryDetailDto? {
        return getCountryByIdUseCase(id)
    }
}