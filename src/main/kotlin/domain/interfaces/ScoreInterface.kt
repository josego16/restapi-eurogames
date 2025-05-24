package domain.interfaces

import domain.models.Score

interface ScoreInterface{
    suspend fun getAll(): List<Score>
    suspend fun getById(id: Int): Score?
}