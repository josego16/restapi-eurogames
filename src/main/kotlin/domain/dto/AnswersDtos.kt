package domain.dto

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class AnswerCreateDto(
    @Serializable(with = UUIDSerializer::class)
    val questionId: UUID,
    val text: String,
    val isCorrect: Boolean
)

@Serializable
data class AnswerResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val questionId: UUID,
    val text: String,
    val isCorrect: Boolean
)