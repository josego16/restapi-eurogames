package domain.interfaces

import domain.models.Score

interface ScoreRepository{
    suspend fun getAll(): List<Score>
    suspend fun getById(id: Int): Score?
}