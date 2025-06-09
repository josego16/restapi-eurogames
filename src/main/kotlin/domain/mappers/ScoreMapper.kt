package domain.mappers

import domain.dto.ScoreResponseDto
import domain.models.Score


fun Score.toResponseDto(): ScoreResponseDto = ScoreResponseDto(
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