package domain.dto

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class QuestionResponseDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val imageUrl: String? = null,
)

@Serializable
data class QuestionWithAnswersDto(
    @Serializable(with = UUIDSerializer::class)
    val id: UUID,
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val imageUrl: String? = null,
    val answers: List<AnswerResponseDto>
)