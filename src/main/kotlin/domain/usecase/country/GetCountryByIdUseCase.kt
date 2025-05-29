package domain.usecase.country

import domain.dto.CountryDetailDto
import domain.interfaces.CountryRepository
import domain.mappers.toDetailDto

class GetCountryByIdUseCase (private val repository: CountryRepository) {
    suspend operator fun invoke(id: Int): CountryDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}