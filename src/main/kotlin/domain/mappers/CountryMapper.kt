package domain.mappers

import domain.dto.CountryDetailDto
import domain.dto.CountryResponseDto
import domain.models.Country

/**
 * Convierte un modelo [Country] a un [CountryResponseDto].
 * @receiver Country a convertir
 * @return [CountryResponseDto] con los datos básicos del país
 */
fun Country.toResponseDto(): CountryResponseDto = with(this) {
    CountryResponseDto(
        id = id,
        nameCommon = nameCommon,
        capital = capital,
        region = region,
        flagUrl = flagUrl,
    )
}

/**
 * Convierte un modelo [Country] a un [CountryDetailDto] con información extendida.
 * @receiver Country a convertir
 * @return [CountryDetailDto] con los datos completos del país
 */
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