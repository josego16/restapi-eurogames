package domain.usecase.gamesession

import domain.enums.SessionStatus
import domain.interfaces.GameSessionRepository

class UpdateGameSessionStatusUseCase(private val repository: GameSessionRepository) {
    suspend operator fun invoke(sessionId: Int, status: SessionStatus): Boolean {
        return repository.updateSessionStatus(sessionId, status)
    }
}