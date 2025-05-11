package domain.mappers

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.models.GameSession
import java.util.*

fun GameSessionCreateDto.toModel(): GameSession = GameSession(
    id = UUID.randomUUID(),
    userId = userId,
    scoreSession = 0.0,
    gameType = gameType,
    difficulty = difficulty
)

fun GameSession.toResponseDto(): GameSessionResponseDto = GameSessionResponseDto(
    id = id,
    userId = userId,
    scoreSession = scoreSession,
    gameType = gameType,
    difficulty = difficulty
)