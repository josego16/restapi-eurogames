package domain.mappers

import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.models.Country

fun Country.toResponseDto(): CountryResponseDto = CountryResponseDto(
    id = id,
    nameCommon = nameCommon,
    capital = capital,
    region = region,
    subregion = subregion,
    flagUrl = flagUrl,
)

fun Country.toDetailDto(): CountryDetailDto = CountryDetailDto(
    id = id,
    nameCommon = nameCommon,
    nameOfficial = nameOfficial,
    capital = capital,
    region = region,
    subregion = subregion,
    language = language,
    population = population,
    timezones = timezones,
    continents = continents,
    flagUrl = flagUrl,
    shieldUrl = shieldUrl,
    startOfWeek = startOfWeek,
)

fun CountryDetailDto.toModel(): Country = Country(
    id = id,
    nameCommon = nameCommon,
    nameOfficial = nameOfficial,
    capital = capital,
    region = region,
    subregion = subregion,
    language = language,
    population = population,
    timezones = timezones,
    continents = continents,
    flagUrl = flagUrl,
    shieldUrl = shieldUrl,
    startOfWeek = startOfWeek,
)