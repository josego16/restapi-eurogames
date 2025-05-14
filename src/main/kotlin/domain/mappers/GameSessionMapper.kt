package domain.mappers

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.models.GameSession
import kotlinx.datetime.Clock
import java.util.*

fun GameSessionCreateDto.toModel(): GameSession = GameSession(
    id = UUID.randomUUID(),
    userId = userId,
    gameId = gameId,
    scoreSession = 0.0,
    gameType = gameType,
    difficulty = difficulty,
    startedAt = Clock.System.now()
)

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