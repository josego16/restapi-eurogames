package domain.interfaces

import domain.models.Game

interface GameRepository{
    suspend fun getAll(): List<Game>
    suspend fun getById(id: Int): Game?
}