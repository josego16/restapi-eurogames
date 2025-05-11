package domain.mappers

import domain.dto.GameDetailDto
import domain.dto.GameResponseDto
import domain.models.Game

fun Game.toResponseDto(): GameResponseDto = GameResponseDto(
    id = id,
    name = name,
    gameType = gameType,
    difficulty = difficulty,
    imageUrl = imageUrl ?: ""
)

fun Game.toDetailDto(): GameDetailDto = GameDetailDto(
    id = id,
    name = name,
    gameType = gameType,
    difficulty = difficulty,
    description = description,
    imageUrl = imageUrl ?: ""
)