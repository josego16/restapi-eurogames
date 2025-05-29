package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.dto.PaginatedResponseDto
import domain.dto.PaginationInfoDto
import domain.interfaces.CountryRepository
import domain.mappers.toResponseDto

class GetCountriesPaginatedUseCase(private val repository: CountryRepository) {
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