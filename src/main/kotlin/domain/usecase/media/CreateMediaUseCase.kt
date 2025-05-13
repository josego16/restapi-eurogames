package domain.usecase.media

import domain.dto.MediaCreateDto
import domain.dto.MediaResponseDto
import domain.interfaces.MediaInterface
import domain.models.Media
import java.util.*

class CreateMediaUseCase(private val repository: MediaInterface) {
    suspend operator fun invoke(dto: MediaCreateDto): MediaResponseDto? {
        val media = Media(
            id = UUID.randomUUID(),
            countryId = dto.countryId,
            title = dto.title,
            image = dto.image,
            mediaType = dto.mediaType,
        )
        val created = repository.create(media)
        return created?.let {
            MediaResponseDto(
                id = it.id,
                countryId = it.countryId,
                title = it.title,
                mediaType = it.mediaType,
                image = it.image
            )
        }
    }
}