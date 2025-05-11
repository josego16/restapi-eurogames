package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameInterface
import domain.mappers.toResponseDto
import java.util.*

class GetGameByIdUseCase (private val repository: GameInterface) {
    suspend operator fun invoke(id: UUID): GameResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}