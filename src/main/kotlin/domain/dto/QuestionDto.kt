package domain.dto

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import kotlinx.serialization.Serializable

@Serializable
data class QuestionResponseDto(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null,
)

@Serializable
data class QuestionWithAnswersDto(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null,
    val answers: List<AnswerResponseDto>
)