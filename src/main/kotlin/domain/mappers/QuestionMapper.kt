package domain.mappers

import domain.dto.QuestionResponseDto
import domain.dto.QuestionWithAnswersDto
import domain.models.Question
import domain.models.QuestionWithAnswer

/**
 * Convierte un modelo [Question] a un [QuestionResponseDto].
 * @receiver Question a convertir
 * @return [QuestionResponseDto] con los datos de la pregunta
 */
fun Question.toResponseDto(): QuestionResponseDto = with(this) {
    QuestionResponseDto(
        id = id,
        statement = statement,
        questionType = questionType,
        responseMode = responseMode,
        difficulty = difficulty,
        flagUrl = flagUrl,
        coatUrl = coatUrl,
    )
}

/**
 * Convierte un modelo [QuestionWithAnswer] a un [QuestionWithAnswersDto] que incluye las respuestas.
 * @receiver QuestionWithAnswer a convertir
 * @return [QuestionWithAnswersDto] con la pregunta y sus respuestas
 */
fun QuestionWithAnswer.toDto(): QuestionWithAnswersDto = with(this) {
    QuestionWithAnswersDto(
        id = question.id,
        statement = question.statement,
        questionType = question.questionType,
        responseMode = question.responseMode,
        difficulty = question.difficulty,
        flagUrl = question.flagUrl,
        coatUrl = question.coatUrl,
        answers = answer.map { it.toResponseDto() }
    )
}