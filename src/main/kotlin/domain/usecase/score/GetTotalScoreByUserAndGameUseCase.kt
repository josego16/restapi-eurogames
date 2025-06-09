package domain.usecase.score

import domain.interfaces.ScoreRepository

class GetTotalScoreByUserAndGameUseCase(private val repository: ScoreRepository) {
    suspend operator fun invoke(userId: Int, gameId: Int): Double {
        return repository.getTotalScoreByUserAndGame(userId, gameId)
    }
}

