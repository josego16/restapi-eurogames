package domain.mappers

import domain.dto.AnswerResponseDto
import domain.models.Answer

fun Answer.toResponseDto(): AnswerResponseDto = AnswerResponseDto(
    id = id,
    questionId = questionId,
    text = text,
    isCorrect = isCorrect
)