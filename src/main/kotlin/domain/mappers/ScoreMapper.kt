package domain.mappers

import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.models.Score

/**
 * Convierte un [ScoreCreateDto] a un modelo de dominio [Score].
 * @receiver ScoreCreateDto a convertir
 * @return [Score] con los datos del DTO
 */
fun ScoreCreateDto.toDomain(): Score = with(this) {
    Score(
        id = 0,
        userId = userId,
        gameId = gameId,
        scoreValue = scoreValue,
        gameType = gameType,
        difficulty = difficulty,
        correctAnswers = correctAnswers,
        wrongAnswers = wrongAnswers,
        totalQuestions = totalQuestions
    )
}

/**
 * Convierte un modelo [Score] a un [ScoreResponseDto].
 * @receiver Score a convertir
 * @return [ScoreResponseDto] con los datos del score
 */
fun Score.toResponseDto(): ScoreResponseDto = with(this) {
    ScoreResponseDto(
        id = id,
        userId = userId,
        gameId = gameId,
        scoreValue = scoreValue,
        gameType = gameType,
        difficulty = difficulty,
        correctAnswers = correctAnswers,
        wrongAnswers = wrongAnswers,
        totalQuestions = totalQuestions
    )
}