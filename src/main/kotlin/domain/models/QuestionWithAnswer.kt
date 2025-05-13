package domain.models

import kotlinx.serialization.Serializable

@Serializable
data class QuestionWithAnswer(
    val question: Question,
    val answer: List<Answer>
)