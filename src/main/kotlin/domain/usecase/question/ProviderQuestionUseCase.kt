package domain.usecase.question

import data.repositories.QuestionRepositoryImpl
import domain.dto.QuestionResponseDto
import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionInterface
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

object ProviderQuestionUseCase {
    private val repository: QuestionInterface = QuestionRepositoryImpl()
    private val logger: Logger = LoggerFactory.getLogger("QuestionUseCaseLogger")

    private val getAllQuestionsUseCase = GetAllQuestionsUseCase(repository)
    private val getAllQuestionWithAnswerUseCase = GetAllQuestionWithAnswerUseCase(repository)
    private val getQuestionByIdUseCase = GetQuestionByIdUseCase(repository)

    suspend fun getAllQuestions(): List<QuestionResponseDto> = getAllQuestionsUseCase()
    suspend fun getAllQuestionWithAnswer(): List<QuestionWithAnswersDto> = getAllQuestionWithAnswerUseCase()
    suspend fun getQuestionById(id: UUID): QuestionResponseDto? {
        return getQuestionByIdUseCase(id)
    }
}