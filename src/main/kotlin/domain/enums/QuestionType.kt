package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class QuestionType {
    Flag_Guess, Coat_Quiz,
    History_Quiz, Geography_Quiz,
    Sports_Quiz, Mythology_Quiz
}