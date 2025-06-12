package domain.mappers

import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.models.Country

fun Country.toResponseDto(): CountryResponseDto = with(this) {
    CountryResponseDto(
        id = id,
        nameCommon = nameCommon,
        capital = capital,
        region = region,
        flagUrl = flagUrl,
    )
}

fun Country.toDetailDto(): CountryDetailDto = with(this) {
    CountryDetailDto(
        id = id,
        nameCommon = nameCommon,
        nameOfficial = nameOfficial,
        capital = capital,
        region = region,
        subregion = subregion,
        population = population,
        timezones = timezones,
        continents = continents,
        flagUrl = flagUrl,
        shieldUrl = shieldUrl,
        startOfWeek = startOfWeek
    )
}