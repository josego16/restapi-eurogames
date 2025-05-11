package domain.dto

import domain.enums.MediaType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class MediaCreateDto(
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val title: String,
    val type: MediaType,
    val img: String
)

@Serializable
data class MediaResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val title: String,
    val type: MediaType,
    val img: String,
)