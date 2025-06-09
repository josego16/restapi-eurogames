package domain.mappers

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.enums.SessionStatus
import domain.models.GameSession
import kotlinx.datetime.Clock

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

fun GameSessionCreateDto.toDomain(userId: Int): GameSession = GameSession(
    id = 0,
    userId = userId,
    gameId = gameId,
    scoreSession = 0.0,
    gameType = gameType,
    difficulty = difficulty,
    status = SessionStatus.En_progreso,
    startedAt = Clock.System.now(),
    finishedAt = null
)