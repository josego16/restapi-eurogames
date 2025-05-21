package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class CountryResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val nameCommon: String,
    val capital: String,
    val region: String,
    val language: String? = null,
    val flagUrl: String? = null
)

@Serializable
data class CountryDetailDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val nameCommon: String,
    val nameOfficial: String,
    val capital: String,
    val region: String,
    val subregion: String,
    val population: Long,
    val timezones: List<String>,
    val continents: List<String>,
    val flagUrl: String? = null,
    val description: String? = null,
    val shieldUrl: String? = null,
    val startOfWeek: String,
    val language: String? = null
)

@Serializable
data class PagedCountryResponseDto(
    val items: List<CountryResponseDto>,
    val totalItems: Long,
    val page: Int,
    val pageSize: Int
)