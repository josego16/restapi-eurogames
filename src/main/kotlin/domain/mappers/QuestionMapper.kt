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
    flagUrl = flagUrl,
    coatUrl = coatUrl,
)

fun QuestionWithAnswer.toDto(): QuestionWithAnswersDto = QuestionWithAnswersDto(
    id = question.id,
    statement = question.statement,
    questionType = question.questionType,
    responseMode = question.responseMode,
    difficulty = question.difficulty,
    flagUrl = question.flagUrl,
    coatUrl = question.coatUrl,
    answers = answer.map { it.toResponseDto() }
)