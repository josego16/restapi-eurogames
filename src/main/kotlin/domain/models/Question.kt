package domain.models

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Question(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID =UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val imageUrl: String? = null
)