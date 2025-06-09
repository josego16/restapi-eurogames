package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionRepository
import domain.mappers.toResponseDto

class GetGameSessionsByUserIdUseCase(private val repository: GameSessionRepository) {
    suspend operator fun invoke(userId: Int): List<GameSessionResponseDto> {
        return repository.getByUserId(userId).map { it.toResponseDto() }
    }
}