package domain.mappers

import domain.dto.AnswerCreateDto
import domain.dto.AnswerResponseDto
import domain.models.Answer

fun AnswerCreateDto.toModel(): Answer = Answer(
    questionId = questionId,
    text = text,
    isCorrect = isCorrect
)

fun Answer.toResponseDto(): AnswerResponseDto = AnswerResponseDto(
    id = id,
    questionId = questionId,
    text = text,
    isCorrect = isCorrect
)