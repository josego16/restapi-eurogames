package domain.usecase.gamesession

import domain.enums.SessionStatus
import domain.interfaces.GameSessionInterface

class UpdateGameSessionStatusUseCase(private val repository: GameSessionInterface) {
    suspend operator fun invoke(sessionId: Int, status: SessionStatus): Boolean {
        return repository.updateSessionStatus(sessionId, status)
    }
}