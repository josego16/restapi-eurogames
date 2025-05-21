package domain.usecase.country

import data.repositories.CountryRepositoryImpl
import domain.dto.PagedCountryResponseDto
import domain.mappers.toResponseDto

class GetAllCountriesPagedUseCase(private val repository: CountryRepositoryImpl) {
    suspend operator fun invoke(page: Int, size: Int): PagedCountryResponseDto {
        val limit = size
        val offset = (page - 1) * size
        val (items, total) = repository.getAllPaged(limit, offset)
        return PagedCountryResponseDto(
            items = items.map { it.toResponseDto() },
            totalItems = total,
            page = page,
            pageSize = size
        )
    }
}

