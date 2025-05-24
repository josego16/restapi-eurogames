package domain.usecase.question

import data.repositories.QuestionRepositoryImpl
import domain.dto.QuestionResponseDto
import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionInterface

object ProviderQuestionUseCase {
    private val repository: QuestionInterface = QuestionRepositoryImpl()

    private val getAllQuestionsUseCase = GetAllQuestionsUseCase(repository)
    private val getAllQuestionWithAnswerUseCase = GetAllQuestionWithAnswerUseCase(repository)
    private val getQuestionByIdUseCase = GetQuestionByIdUseCase(repository)

    suspend fun getAllQuestions(): List<QuestionResponseDto> = getAllQuestionsUseCase()
    suspend fun getAllQuestionWithAnswer(): List<QuestionWithAnswersDto> = getAllQuestionWithAnswerUseCase()
    suspend fun getQuestionById(id: Int): QuestionResponseDto? {
        return getQuestionByIdUseCase(id)
    }
}