package domain.mappers

import domain.dto.GameSessionResponseDto
import domain.models.GameSession

fun GameSession.toResponseDto(): GameSessionResponseDto = GameSessionResponseDto(
    id = id,
    userId = userId,
    gameId = gameId,
    scoreSession = scoreSession,
    gameType = gameType,
    difficulty = difficulty,
    status = status,
    startedAt = startedAt.toEpochMilliseconds(),
    finishedAt = finishedAt?.toEpochMilliseconds()
)