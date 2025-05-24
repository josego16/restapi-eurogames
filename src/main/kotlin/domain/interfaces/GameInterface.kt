package domain.interfaces

import domain.models.Game

interface GameInterface{
    suspend fun getAll(): List<Game>
    suspend fun getById(id: Int): Game?
}