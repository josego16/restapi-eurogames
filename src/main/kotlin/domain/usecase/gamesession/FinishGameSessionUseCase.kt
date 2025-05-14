package domain.usecase.gamesession

import domain.dto.ActionDto
import domain.dto.ScoreResponseDto
import domain.enums.SessionStatus
import domain.interfaces.GameSessionInterface
import domain.interfaces.ScoreInterface
import domain.mappers.toResponseDto
import domain.models.Score
import domain.utils.ScoreUtils
import kotlinx.datetime.Clock
import java.util.*

class FinishGameSessionUseCase(
    private val repository: GameSessionInterface,
    private val scoreRepository: ScoreInterface
) {
    suspend operator fun invoke(sessionId: UUID, actions: List<ActionDto>): ScoreResponseDto {
        val session = repository.getById(sessionId)
            ?: throw IllegalArgumentException("Session with ID $sessionId not found")

        if (session.status != SessionStatus.IN_PROGRESS)
            throw IllegalStateException("Session already finished")

        val scoreValue = ScoreUtils.calculateScore(actions, session.difficulty, session.gameType)

        val updatedSession = session.copy(
            scoreSession = scoreValue,
            status = SessionStatus.FINISHED,
            finishedAt = Clock.System.now()
        )

        repository.update(updatedSession)

        val score = Score(
            id = UUID.randomUUID(),
            userId = updatedSession.userId,
            gameId = updatedSession.gameId,
            scoreValue = scoreValue,
            gameType = updatedSession.gameType,
            difficulty = updatedSession.difficulty
        )

        return scoreRepository.create(score)!!.toResponseDto()
    }
}