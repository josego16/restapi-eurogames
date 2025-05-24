package domain.usecase.score

import data.repositories.ScoreRepositoryImpl
import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreInterface

object ProviderScoreUseCase {
    private val repository: ScoreInterface = ScoreRepositoryImpl()

    private val getAllScoresUseCase = GetAllScoresUseCase(repository)
    private val getScoreByIdUseCase = GetScoreByIdUseCase(repository)

    suspend fun getAllScores(): List<ScoreResponseDto> = getAllScoresUseCase()
    suspend fun getScoreById(id: Int): ScoreResponseDto? = getScoreByIdUseCase(id)
}