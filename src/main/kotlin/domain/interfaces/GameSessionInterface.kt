package domain.interfaces

import domain.models.GameSession
import java.util.*

interface GameSessionInterface {
    suspend fun getAll(): List<GameSession>
    suspend fun getById(id: UUID): GameSession?
    suspend fun create(entity: GameSession): GameSession?
    suspend fun update(entity: GameSession): GameSession?
}