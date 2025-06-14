package domain.mappers

import domain.dto.AnswerResponseDto
import domain.models.Answer

/**
 * Convierte un modelo [Answer] a un [AnswerResponseDto].
 * @receiver Answer a convertir
 * @return [AnswerResponseDto] con los datos del modelo
 */
fun Answer.toResponseDto(): AnswerResponseDto = with(this) {
    AnswerResponseDto(
        id = id,
        questionId = questionId,
        text = text,
        isCorrect = isCorrect
    )
}