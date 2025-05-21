package domain.mappers

import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.models.Country

fun Country.toResponseDto(): CountryResponseDto = CountryResponseDto(
    id = id,
    nameCommon = nameCommon,
    capital = capital,
    language = language ?: "Unknown",
    flagUrl = flagUrl,
    region = region
)

fun Country.toDetailDto(): CountryDetailDto = CountryDetailDto(
    id = id,
    nameCommon = nameCommon,
    nameOfficial = nameOfficial,
    capital = capital,
    region = region,
    subregion = subregion,
    population = population,
    timezones = timezones,
    continents = emptyList(),
    flagUrl = flagUrl,
    shieldUrl = shieldUrl,
    description = flagDescription,
    startOfWeek = startOfWeek,
    language = language
)