package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionRepository
import domain.mappers.toResponseDto

class GetAllGameSessionsUseCase(private val repository: GameSessionRepository) {
    suspend operator fun invoke(): List<GameSessionResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}