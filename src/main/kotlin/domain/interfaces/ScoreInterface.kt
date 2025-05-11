package domain.interfaces

import domain.models.Score
import java.util.*

interface ScoreInterface{
    suspend fun getAll(): List<Score>
    suspend fun getById(id: UUID): Score?
    suspend fun create(entity: Score): Score?
    suspend fun update(id: UUID, entity: Score): Score?
    suspend fun delete(id: UUID): Boolean
}