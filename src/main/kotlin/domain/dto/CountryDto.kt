package domain.dto

import kotlinx.serialization.Serializable

/**
 * DTO que representa la información básica de un país para respuestas de la API.
 *
 * @property id Identificador único del país.
 * @property nameCommon Nombre común del país.
 * @property capital Lista de capitales del país.
 * @property region Región a la que pertenece el país.
 * @property flagUrl URL de la bandera del país, si existe.
 */
@Serializable
data class CountryResponseDto(
    val id: Int,
    val nameCommon: String,
    val capital: List<String> = listOf(),
    val region: String,
    val flagUrl: String? = null
)

/**
 * DTO que representa el detalle completo de un país.
 *
 * @property id Identificador único del país.
 * @property nameCommon Nombre común del país.
 * @property nameOfficial Nombre oficial del país.
 * @property capital Lista de capitales del país.
 * @property region Región principal del país.
 * @property subregion Subregión del país.
 * @property population Población total del país.
 * @property timezones Lista de zonas horarias del país.
 * @property continents Lista de continentes a los que pertenece el país.
 * @property flagUrl URL de la bandera del país, si existe.
 * @property shieldUrl URL del escudo del país, si existe.
 * @property startOfWeek Día de inicio de la semana en el país.
 */
@Serializable
data class CountryDetailDto(
    val id: Int,
    val nameCommon: String,
    val nameOfficial: String,
    val capital: List<String> = listOf(),
    val region: String,
    val subregion: String,
    val population: Long,
    val timezones: List<String> = listOf(),
    val continents: List<String> = listOf(),
    val flagUrl: String? = null,
    val shieldUrl: String? = null,
    val startOfWeek: String
)