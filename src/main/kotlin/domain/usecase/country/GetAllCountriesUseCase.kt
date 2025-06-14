package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener todos los países disponibles.
 *
 * @property repository Repositorio que gestiona el acceso a los datos de países.
 */
class GetAllCountriesUseCase(private val repository: CountryRepository) {

    /**
     * Invoca el caso de uso para recuperar todos los países.
     *
     * @return Una lista de [CountryResponseDto] representando todos los países disponibles.
     */
    suspend operator fun invoke(): List<CountryResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}