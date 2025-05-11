package domain.usecase.country

import domain.dto.CountryResponseDto
import domain.interfaces.CountryInterface
import domain.mappers.toResponseDto

class GetAllCountriesUseCase(private val repository: CountryInterface) {
    suspend operator fun invoke(): List<CountryResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}