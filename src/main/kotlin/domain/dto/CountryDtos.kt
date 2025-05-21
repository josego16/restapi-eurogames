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
    val subregion: String,
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
    val language: String,
    val population: Long,
    val timezones: String,
    val continents: String,
    val flagUrl: String? = null,
    val shieldUrl: String? = null,
    val startOfWeek: String
)