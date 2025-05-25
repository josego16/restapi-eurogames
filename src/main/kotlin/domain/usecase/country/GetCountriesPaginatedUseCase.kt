package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.dto.PaginatedResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class GetCountriesPaginatedUseCase(
    private val repository: CountryInterface
) {
    suspend operator fun invoke(page: Int, size: Int): PaginatedResponseDto<CountryResponseDto> {
        val result = repository.getPaginated(page, size)
        val totalPages = (result.totalCount + size - 1) / size

        return PaginatedResponseDto(
            items = result.countries.map { it.toResponseDto() },
            page = page,
            size = size,
            totalItems = result.totalCount,
            totalPages = totalPages
        )
    }
}