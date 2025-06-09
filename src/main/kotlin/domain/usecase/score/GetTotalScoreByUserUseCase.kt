package domain.usecase.score

import domain.interfaces.ScoreRepository

class GetTotalScoreByUserUseCase(private val repository: ScoreRepository) {
    suspend operator fun invoke(userId: Int): Double {
        return repository.getTotalScoreByUser(userId)
    }
}

