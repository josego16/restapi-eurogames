package domain.usecase.language
import data.repositories.LanguageRepositoryImpl
import domain.dto.GameSessionResponseDto
import domain.dto.LanguageResponseDto
import domain.interfaces.LanguageInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderLanguageUseCase {
    private val repository: LanguageInterface = LanguageRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("LanguageUseCaseLogger")

    private val getAllLanguagesUseCase = GetAllLanguagesUseCase(repository)
    private val getLanguageByIdUseCase = GetLanguageByIdUseCase(repository)

    suspend fun getAllGameSessions(): List<LanguageResponseDto> = getAllLanguagesUseCase()
    suspend fun getGameSessionById(id: UUID): GameSessionResponseDto {
        return getGameSessionById(id)
    }
}