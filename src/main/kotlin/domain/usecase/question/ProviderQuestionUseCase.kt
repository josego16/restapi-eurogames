package domain.usecase.question

import data.repositories.QuestionRepositoryImpl
import domain.dto.QuestionResponseDto
import domain.dto.QuestionWithAnswersDto
import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.interfaces.QuestionRepository

object ProviderQuestionUseCase {
    private val repository: QuestionRepository = QuestionRepositoryImpl()

    private val getAllQuestionsUseCase = GetAllQuestionsUseCase(repository)
    private val getQuestionByIdUseCase = GetQuestionByIdUseCase(repository)
    private val getQuestionsWithAnswersUseCase = GetQuestionsWithAnswersUseCase(repository)
    private val getQuestionWithAnswerByIdUseCase = GetQuestionWithAnswerByIdUseCase(repository)
    private val getQuestionWithAnswerByDifficultyUseCase = GetQuestionWithAnswerByDifficultyUseCase(repository)

    suspend fun getAllQuestions(): List<QuestionResponseDto> = getAllQuestionsUseCase()
    suspend fun getQuestionById(id: Int): QuestionResponseDto? {
        return getQuestionByIdUseCase(id)
    }

    suspend fun getAllQuestionWithAnswer(): List<QuestionWithAnswersDto> = getQuestionsWithAnswersUseCase()
    suspend fun getQuestionWithAnswerById(id: Int): QuestionWithAnswersDto? = getQuestionWithAnswerByIdUseCase(id)
    suspend fun getQuestionwithAnswerBydifficulty(
        difficulty: Difficulty? = null,
        category: QuestionType? = null
    ): List<QuestionWithAnswersDto> {
        return getQuestionWithAnswerByDifficultyUseCase(difficulty, category)
    }
}