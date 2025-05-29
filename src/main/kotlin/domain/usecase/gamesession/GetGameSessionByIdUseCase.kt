package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionRepository
import domain.mappers.toResponseDto

class GetGameSessionByIdUseCase (private val repository: GameSessionRepository) {
    suspend operator fun invoke(id: Int): GameSessionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}