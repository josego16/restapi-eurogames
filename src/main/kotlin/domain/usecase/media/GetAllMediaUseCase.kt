package domain.usecase.media

import domain.dto.MediaResponseDto
import domain.interfaces.MediaInterface
import domain.mappers.toResponseDto

class GetAllMediaUseCase (private val repository: MediaInterface) {
    suspend operator fun invoke(): List<MediaResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}