package domain.usecase.gamesession

import domain.dto.GameSessionResponseDto
import domain.interfaces.GameSessionInterface
import domain.mappers.toResponseDto
import java.util.*

class GetGameSessionByIdUseCase (private val repository: GameSessionInterface) {
    suspend operator fun invoke(id: UUID): GameSessionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}