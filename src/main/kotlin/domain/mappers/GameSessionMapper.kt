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

fun GameSessionCreateDto.toDomain(): GameSession = GameSession(
    id = 0,  // ID autogenerado
    userId = userId,
    gameId = gameId,
    scoreSession = 0.0, // valor inicial
    gameType = gameType,
    difficulty = difficulty,
    status = SessionStatus.In_Progress, // estado inicial
    startedAt = Clock.System.now(),
    finishedAt = null
)