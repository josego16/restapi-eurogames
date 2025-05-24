package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface
import domain.mappers.toResponseDto

class GetGameSessionByIdUseCase (private val repository: GameSessionInterface) {
    suspend operator fun invoke(id: Int): GameSessionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}