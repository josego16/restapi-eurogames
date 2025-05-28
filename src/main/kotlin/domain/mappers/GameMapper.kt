package domain.mappers

import domain.dto.GameResponseDto
import domain.models.Game

fun Game.toResponseDto(): GameResponseDto = GameResponseDto(
    id = id,
    name = name,
    gameType = gameType,
    description = description,
    imageUrl = imageUrl ?: ""
)