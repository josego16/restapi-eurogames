package domain.mappers

import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.models.Score

fun ScoreCreateDto.toModel(): Score = Score(
    userId = userId,
    gameId = gameId,
    scoreValue = scoreValue,
    gameType = gameType,
    difficulty = difficulty
)

fun Score.toResponseDto(): ScoreResponseDto = ScoreResponseDto(
    id = id,
    userId = userId,
    gameId = gameId,
    scoreValue = scoreValue,
    gameType = gameType,
    difficulty = difficulty
)