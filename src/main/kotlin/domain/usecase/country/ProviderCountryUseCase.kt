package domain.usecase.country

import data.repositories.CountryRepositoryImpl
import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderCountryUseCase {
    private val repository: CountryInterface = CountryRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("CountryUseCaseLogger")

    private val getAllCountriesUseCase = GetAllCountriesUseCase(repository)
    private val getCountryByIdUseCase = GetCountryByIdUseCase(repository)

    suspend fun getAllCountries(): List<CountryResponseDto> = getAllCountriesUseCase()
    suspend fun getCountryById(id: UUID): CountryResponseDto? {
        return getCountryByIdUseCase(id)
    }
}