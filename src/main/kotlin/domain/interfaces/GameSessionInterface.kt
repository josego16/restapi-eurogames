package domain.interfaces

import domain.models.GameSession

interface GameSessionInterface {
    suspend fun getAll(): List<GameSession>
    suspend fun getById(id: Int): GameSession?
}