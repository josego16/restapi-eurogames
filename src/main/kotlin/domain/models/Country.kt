package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Country(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),

    val nameCommon: String,
    val nameOfficial: String,
    val capital: String,
    val region: String,
    val subregion: String,
    val language: String? = null,
    val population: Long,
    val timezones: List<String>,
    val continents: String,
    val flagUrl: String? = null,
    val flagDescription: String? = null,
    val shieldUrl: String? = null,
    val startOfWeek: String
)