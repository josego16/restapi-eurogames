package domain.usecase.gamesession

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.enums.SessionStatus
import domain.interfaces.GameSessionInterface
import domain.mappers.toResponseDto
import domain.models.GameSession
import kotlinx.datetime.Clock
import java.util.*

class StartGameSessionUseCase(private val repository: GameSessionInterface) {
    suspend operator fun invoke(dto: GameSessionCreateDto): GameSessionResponseDto {
        val session = GameSession(
            id = UUID.randomUUID(),
            userId = dto.userId,
            gameId = dto.gameId,
            difficulty = dto.difficulty,
            gameType = dto.gameType,
            scoreSession = 0.0,
            status = SessionStatus.IN_PROGRESS,
            startedAt = Clock.System.now(),
            finishedAt = null
        )
        return repository.create(session)!!.toResponseDto()
    }
}