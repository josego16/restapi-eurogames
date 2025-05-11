package domain.usecase.media
import data.repositories.MediaRepositoryImpl
import domain.dto.MediaResponseDto
import domain.interfaces.MediaInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderMediaUseCase {
    private val repository: MediaInterface = MediaRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("MediaUseCaseLogger")

    private val getAllMediaUseCase = GetAllMediaUseCase(repository)
    private val getMediaByIdUseCase = GetMediaByIdUseCase(repository)

    suspend fun getAllMedia(): List<MediaResponseDto> = getAllMediaUseCase()
    suspend fun getMediaById(id: UUID): MediaResponseDto?{
        return getMediaByIdUseCase(id)
    }
}