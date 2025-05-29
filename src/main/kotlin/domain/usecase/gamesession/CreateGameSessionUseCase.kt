package domain.usecase.gamesession

import domain.dto.GameSessionCreateDto
import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface
import domain.mappers.toResponseDto

class CreateGameSessionUseCase(private val repository: GameSessionInterface) {
    suspend operator fun invoke(sessionCreateDto: GameSessionCreateDto): GameSessionResponseDto {
        val session = repository.createGameSession(sessionCreateDto)
        return session.toResponseDto()
    }
}