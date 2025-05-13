package domain.usecase.media

import data.repositories.MediaRepositoryImpl
import domain.dto.MediaCreateDto
import domain.dto.MediaResponseDto
import domain.dto.MediaUpdateDto
import domain.interfaces.MediaInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderMediaUseCase {
    private val repository: MediaInterface = MediaRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("MediaUseCaseLogger")

    private val getAllMediaUseCase = GetAllMediaUseCase(repository)
    private val getMediaByIdUseCase = GetMediaByIdUseCase(repository)
    private val createMediaUseCase = CreateMediaUseCase(repository)
    private val updateMediaUseCase = UpdateMediaUseCase(repository)
    private val deleteMediaUseCase = DeleteMediaUseCase(repository)

    suspend fun getAllMedia(): List<MediaResponseDto> = getAllMediaUseCase()
    suspend fun getMediaById(id: UUID): MediaResponseDto? = getMediaByIdUseCase(id)
    suspend fun createMedia(dto: MediaCreateDto) = createMediaUseCase(dto)
    suspend fun updateMedia(id: UUID, dto: MediaUpdateDto) = updateMediaUseCase(id, dto)
    suspend fun deleteMedia(id: UUID) = deleteMediaUseCase(id)
}