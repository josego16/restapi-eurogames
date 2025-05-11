package domain.usecase.question
import data.repositories.QuestionRepositoryImpl
import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderQuestionUseCase {
    private val repository: QuestionInterface = QuestionRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("QuestionUseCaseLogger")

    private val getallquestionsUseCase = GetAllQuestionsUseCase(repository)
    private val getQuestionByIdUseCase = GetQuestionByIdUseCase(repository)

    suspend fun getAllQuestions(): List<QuestionResponseDto> = getallquestionsUseCase()
    suspend fun getQuestionById(id: UUID): QuestionResponseDto?{
        return getQuestionByIdUseCase(id)
    }
}