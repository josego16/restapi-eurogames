package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto
import java.util.*

class GetCountryByIdUseCase (private val repository: CountryInterface) {
    suspend operator fun invoke(id: UUID): CountryResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}