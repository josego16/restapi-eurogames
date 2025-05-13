package domain.usecase.country

import domain.dto.CountryDetailDto
import domain.interfaces.CountryInterface
import domain.mappers.toDetailDto
import java.util.*

class GetCountryByIdUseCase (private val repository: CountryInterface) {
    suspend operator fun invoke(id: UUID): CountryDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}