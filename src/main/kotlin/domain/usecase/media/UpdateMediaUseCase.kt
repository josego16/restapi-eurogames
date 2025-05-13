package domain.usecase.media

import domain.dto.MediaResponseDto
import domain.dto.MediaUpdateDto
import domain.enums.MediaType
import domain.interfaces.MediaInterface
import domain.mappers.toResponseDto
import java.util.*

class UpdateMediaUseCase(private val repository: MediaInterface) {
    suspend operator fun invoke(id: UUID, dto: MediaUpdateDto): MediaResponseDto? {
        val media = repository.getById(id) ?: return null
        val updateMedia = media.copy(
            countryId = dto.countryId,
            title = dto.title ?: "",
            image = dto.image ?: "",
            mediaType = dto.mediaType ?: MediaType.DEFAULT,
        )
        val savedMedia = repository.update(id, updateMedia)
        return savedMedia?.toResponseDto()
    }
}