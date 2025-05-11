package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameInterface
import domain.mappers.toResponseDto

class GetAllGamesUseCase(private val repository: GameInterface) {
    suspend operator fun invoke(): List<GameResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}