package domain.usecase.game

import domain.dto.GameDetailDto
import domain.interfaces.GameInterface
import domain.mappers.toDetailDto

class GetGameByIdUseCase (private val repository: GameInterface) {
    suspend operator fun invoke(id: Int): GameDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}