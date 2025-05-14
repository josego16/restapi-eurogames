package domain.usecase.game

import domain.dto.GameDetailDto
import domain.interfaces.GameInterface
import domain.mappers.toDetailDto
import java.util.*

class GetGameByIdUseCase (private val repository: GameInterface) {
    suspend operator fun invoke(id: UUID): GameDetailDto? {
        return repository.getById(id)?.toDetailDto()
    }
}