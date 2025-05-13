package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class CountryResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val countryName: String,
    val capital: String,
    val flagUrl: String? = null,
    val region: String,
)

@Serializable
data class CountryDetailDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val countryName: String,
    val capital: String,
    val region: String,
    val subregion: String,
    val population: Long,
    val flagUrl: String? = null,
    val shieldUrl: String? = null,
    val description: String? = null
)