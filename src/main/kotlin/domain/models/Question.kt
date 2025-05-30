package domain.models

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import kotlinx.serialization.Serializable

@Serializable
data class Question(
    var id: Int,
    val statement: String,
    val questionType: QuestionType,
    val responseMode: ResponseMode,
    val difficulty: Difficulty,
    val flagUrl: String? = null,
    val coatUrl: String? = null
)