package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class CountryResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val name: String,
    val capital: String,
    val flagUrl: String,
    val region: String,
)

@Serializable
data class CountryDetailDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val name: String,
    val capital: String,
    val region: String,
    val subregion: String,
    val population: Long,
    val flagUrl: String,
    val shieldUrl: String,
    val description: String
)