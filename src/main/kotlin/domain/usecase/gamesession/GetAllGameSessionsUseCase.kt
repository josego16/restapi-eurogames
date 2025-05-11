package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface
import domain.mappers.toResponseDto

class GetAllGameSessionsUseCase(private val repository: GameSessionInterface) {
    suspend operator fun invoke(): List<GameSessionResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}