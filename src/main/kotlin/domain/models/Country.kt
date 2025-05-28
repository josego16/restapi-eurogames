package domain.models

import kotlinx.serialization.Serializable

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