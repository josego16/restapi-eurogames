package domain.models

import kotlinx.serialization.Serializable

/**
 * Modelo que representa un país.
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
data class Country(
    var id: Int,

    val nameCommon: String,
    val nameOfficial: String = "",
    val capital: List<String> = emptyList(),
    val region: String,
    val subregion: String = "",
    val population: Long = 0,
    val timezones: List<String> = emptyList(),
    val continents:List<String> = emptyList(),
    val flagUrl: String? = null,
    val shieldUrl: String? = null,
    val startOfWeek: String = ""
)