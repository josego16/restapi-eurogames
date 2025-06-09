package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionRepository
import domain.mappers.toResponseDto
import domain.models.GameSession

class UpdateGameSessionUseCase(private val repository: GameSessionRepository) {
    suspend operator fun invoke(id: Int, session: GameSession): GameSessionResponseDto? {
        return repository.updateGameSession(id, session)?.toResponseDto()
    }
}