package domain.usecase.game

import domain.dto.GameResponseDto
import domain.interfaces.GameRepository
import domain.mappers.toResponseDto

class GetGameByIdUseCase(private val repository: GameRepository) {
    suspend operator fun invoke(id: Int): GameResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}