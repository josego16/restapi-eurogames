package domain.mappers

import domain.dto.GameResponseDto
import domain.models.Game

/**
 * Convierte un modelo [Game] a un [GameResponseDto].
 * @receiver Game a convertir
 * @return [GameResponseDto] con los datos del juego
 */
fun Game.toResponseDto(): GameResponseDto = with(this) {
    GameResponseDto(
        id = id,
        name = name,
        gameType = gameType,
        description = description,
        imageUrl = imageUrl ?: ""
    )
}