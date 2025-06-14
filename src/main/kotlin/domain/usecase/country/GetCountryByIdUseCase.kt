package domain.usecase.country

import domain.dto.CountryDetailDto
import domain.interfaces.CountryRepository
import domain.mappers.toDetailDto

/**
 * Caso de uso para obtener los detalles de un país específico por su ID.
 *
 * @property repository Repositorio que gestiona el acceso a los datos de países.
 */
class GetCountryByIdUseCase(private val repository: CountryRepository) {

    /**
     * Invoca el caso de uso para recuperar los detalles de un país por su ID.
     *
     * @param id ID del país a recuperar.
     * @return Una instancia de [CountryDetailDto] si el país existe, o `null` si no se encuentra.
     */
    suspend operator fun invoke(id: Int): CountryDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}