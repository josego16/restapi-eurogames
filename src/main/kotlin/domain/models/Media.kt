package domain.models

import domain.enums.MediaType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Media(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val title: String,
    val mediaType: MediaType,
    val image: String? = null,
    val description: String?=null
)