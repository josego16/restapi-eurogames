package domain.usecase.country

import domain.dto.CountryDetailDto
import domain.interfaces.CountryInterface
import domain.mappers.toDetailDto

class GetCountryByIdUseCase (private val repository: CountryInterface) {
    suspend operator fun invoke(id: Int): CountryDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}