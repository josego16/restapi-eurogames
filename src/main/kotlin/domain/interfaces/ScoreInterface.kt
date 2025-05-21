package domain.interfaces

import domain.models.Score
import java.util.*

interface ScoreInterface{
    suspend fun getAll(): List<Score>
    suspend fun getById(id: UUID): Score?
}