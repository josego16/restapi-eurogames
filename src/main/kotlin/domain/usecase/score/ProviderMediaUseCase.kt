package domain.usecase.score

import data.repositories.ScoreRepositoryImpl
import domain.dto.ScoreResponseDto
import domain.interfaces.ScoreInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderMediaUseCase {
    private val repository: ScoreInterface = ScoreRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("ScoreUseCaseLogger")

    private val getAllScoresUseCase = GetAllScoresUseCase(repository)
    private val getScoreByIdUseCase = GetScoreByIdUseCase(repository)

    suspend fun getAllScores(): List<ScoreResponseDto> = getAllScoresUseCase()
    suspend fun getScoreById(id: UUID): ScoreResponseDto? = getScoreByIdUseCase(id)
}