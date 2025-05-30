package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class QuestionType {
    Flags_and_Coats, History, Geography, Sports, Mythology, General_Knowledge
}