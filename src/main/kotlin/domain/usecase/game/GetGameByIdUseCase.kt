package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameInterface
import domain.mappers.toResponseDto

class GetGameByIdUseCase(private val repository: GameInterface) {
    suspend operator fun invoke(id: Int): GameResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}