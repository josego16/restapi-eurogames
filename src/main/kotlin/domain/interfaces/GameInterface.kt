package domain.interfaces

import domain.models.Game
import java.util.*

interface GameInterface{
    suspend fun getAll(): List<Game>
    suspend fun getById(id: UUID): Game?
}