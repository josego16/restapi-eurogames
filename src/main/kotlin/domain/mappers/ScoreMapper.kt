package domain.mappers

import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.models.Score

fun ScoreCreateDto.toDomain(): Score = Score(
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