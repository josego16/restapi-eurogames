package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Country(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    val countryName: String,
    val capital: String,
    val region: String,
    val subregion: String,
    val language: String,
    val population: Long,
    val flagUrl: String? = null,
    val shieldUrl: String? = null,
    val description: String? = null,
)