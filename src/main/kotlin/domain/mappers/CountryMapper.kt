package domain.mappers

import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.models.Country
import java.util.*

fun Country.toResponseDto(): CountryResponseDto = CountryResponseDto(
    id = id,
    countryName = countryName,
    capital = capital,
    language = language,
    flagUrl = flagUrl ?: "",
    region = region
)

fun Country.toDetailDto(): CountryDetailDto = CountryDetailDto(
    id = id,
    countryName = countryName,
    capital = capital,
    region = region,
    subregion = subregion,
    language = language,
    population = population,
    flagUrl = flagUrl ?: "",
    shieldUrl = shieldUrl ?: "",
    description = description
)

fun CountryDetailDto.toModel(): Country = Country(
    id = UUID.randomUUID(),
    countryName = countryName,
    capital = capital,
    region = region,
    subregion = subregion,
    language = language,
    population = population,
    flagUrl = flagUrl ?: "",
    shieldUrl = shieldUrl ?: "",
    description = description
)