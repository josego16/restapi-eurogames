package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class QuestionType {
    FLAG_GUESS,
    COAT_QUIZ,
    HISTORY_QUIZ,
    GEOGRAPHY_QUIZ,
    SPORTS_QUIZ,
    MYTHOLOGY_QUIZ,
    GENERAL_KNOWLEDGE_QUIZ,
}