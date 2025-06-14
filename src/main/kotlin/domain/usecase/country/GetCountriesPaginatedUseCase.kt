package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.dto.PaginatedResponseDto
import domain.dto.PaginationInfoDto
import domain.interfaces.CountryRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener una lista paginada de países.
 *
 * @property repository Repositorio que gestiona el acceso a los datos de países.
 */
class GetCountriesPaginatedUseCase(private val repository: CountryRepository) {

    /**
     * Invoca el caso de uso para recuperar una página de países.
     *
     * @param page Número de página solicitada (empezando desde 0).
     * @param size Tamaño de cada página (número de elementos por página).
     * @return Una instancia de [PaginatedResponseDto] con la lista de países y la información de paginación.
     */
    suspend operator fun invoke(page: Int, size: Int): PaginatedResponseDto<CountryResponseDto> {
        val result = repository.getPaginated(page, size)
        val totalPages = if (size == 0) 0 else (result.totalItems + size - 1) / size
        val next = if (page + 1 < totalPages) (page + 1).toString() else ""
        val prev = if (page > 0) (page - 1).toString() else null
        val count = result.countries.size

        return PaginatedResponseDto(
            info = PaginationInfoDto(
                count = count,
                pages = totalPages,
                next = next,
                prev = prev
            ),
            items = result.countries.map { it.toResponseDto() }
        )
    }
}