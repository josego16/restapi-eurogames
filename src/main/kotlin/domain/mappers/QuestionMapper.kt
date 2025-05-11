package domain.mappers

import domain.dto.QuestionCreateDto
import domain.dto.QuestionResponseDto
import domain.models.Question

fun QuestionCreateDto.toModel(): Question = Question(
    countryId = countryId,
    statement = statement,
    type = type,
    responseMode = responseMode,
    difficulty = difficulty,
    imageUrl = imageUrl
)

fun Question.toResponseDto(): QuestionResponseDto = QuestionResponseDto(
    id = id,
    countryId = countryId,
    statement = statement,
    type = type,
    responseMode = responseMode,
    difficulty = difficulty,
    imageUrl = imageUrl
)