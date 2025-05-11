package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class LanguageResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    val name: String,
    val code: String,
)