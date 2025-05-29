package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameRepository
import domain.mappers.toResponseDto

class GetAllGamesUseCase(private val repository: GameRepository) {
    suspend operator fun invoke(): List<GameResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}