package domain.mappers

import domain.dto.QuestionResponseDto
import domain.dto.QuestionWithAnswersDto
import domain.models.Question
import domain.models.QuestionWithAnswer

fun Question.toResponseDto(): QuestionResponseDto = QuestionResponseDto(
    id = id,
    statement = statement,
    questionType = questionType,
    responseMode = responseMode,
    difficulty = difficulty,
    imageUrl = imageUrl
)

fun QuestionWithAnswer.toDto(): QuestionWithAnswersDto = QuestionWithAnswersDto(
    id = question.id,
    statement = question.statement,
    questionType = question.questionType,
    responseMode = question.responseMode,
    difficulty = question.difficulty,
    imageUrl = question.imageUrl,
    answers = answer.map { it.toResponseDto() }
)