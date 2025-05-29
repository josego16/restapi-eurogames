package domain.interfaces

import domain.dto.GameSessionCreateDto
import domain.enums.SessionStatus
import domain.models.GameSession

interface GameSessionRepository {
    suspend fun getAll(): List<GameSession>
    suspend fun getById(id: Int): GameSession?
    suspend fun createGameSession(createDto: GameSessionCreateDto): GameSession
    suspend fun updateSessionStatus(sessionId: Int, status: SessionStatus): Boolean
}