package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.dto.PaginatedResponseDto
import domain.dto.PaginationInfoDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class GetCountriesPaginatedUseCase(private val repository: CountryInterface) {
    suspend operator fun invoke(page: Int, size: Int): PaginatedResponseDto<CountryResponseDto> {
        val result = repository.getPaginated(page, size)
        val totalPages = (result.totalItems + size - 1) / size

        return PaginatedResponseDto(
            info = PaginationInfoDto(
                page = page,
                size = size,
                totalItems = result.totalItems,
                totalPages = totalPages
            ),
            items = result.countries.map { it.toResponseDto() }
        )
    }
}