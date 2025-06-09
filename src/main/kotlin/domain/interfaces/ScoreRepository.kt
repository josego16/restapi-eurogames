package domain.interfaces

import domain.models.Score

interface ScoreRepository{
    suspend fun getAll(): List<Score>
    suspend fun getById(id: Int): Score?
    suspend fun getTotalScoreByUser(userId: Int): Double
    suspend fun getTotalScoreByUserAndGame(userId: Int, gameId: Int): Double
    suspend fun createScores(score: Score): Score
}