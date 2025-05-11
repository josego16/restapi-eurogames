package domain.usecase.media

import domain.dto.MediaResponseDto
import domain.interfaces.MediaInterface
import domain.mappers.toResponseDto
import java.util.*

class GetMediaByIdUseCase (private val repository: MediaInterface) {
    suspend operator fun invoke(id: UUID): MediaResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}