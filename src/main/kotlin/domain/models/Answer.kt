package domain.models

import kotlinx.serialization.Serializable

@Serializable
data class Answer(
    var id: Int,
    val questionId: Int,
    val text: String,
    val isCorrect: Boolean,
)