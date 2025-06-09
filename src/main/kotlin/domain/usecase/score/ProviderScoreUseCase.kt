package domain.usecase.score

import data.repositories.ScoreRepositoryImpl
import domain.dto.ScoreCreateDto
import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreRepository

object ProviderScoreUseCase {
    private val repository: ScoreRepository = ScoreRepositoryImpl()

    private val getAllScoresUseCase = GetAllScoresUseCase(repository)
    private val getScoreByIdUseCase = GetScoreByIdUseCase(repository)
    private val getTotalScoreByUserUseCase = GetTotalScoreByUserUseCase(repository)
    private val getTotalScoreByUserAndGameUseCase = GetTotalScoreByUserAndGameUseCase(repository)
    private val createScoreUseCase = CreateScoreUseCase(repository)

    suspend fun getAllScores(): List<ScoreResponseDto> = getAllScoresUseCase()
    suspend fun getScoreById(id: Int): ScoreResponseDto? = getScoreByIdUseCase(id)
    suspend fun getTotalScoreByUser(userId: Int): Double = getTotalScoreByUserUseCase(userId)

    suspend fun getTotalScoreByUserAndGame(userId: Int, gameId: Int): Double {
        return getTotalScoreByUserAndGameUseCase(userId, gameId)
    }

    suspend fun createScore(dto: ScoreCreateDto): ScoreResponseDto = createScoreUseCase(dto)
}