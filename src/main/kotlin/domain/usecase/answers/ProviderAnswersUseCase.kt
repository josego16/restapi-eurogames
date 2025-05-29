package domain.usecase.answers

import data.repositories.AnswerRepositoryImpl
import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerInterface

object ProviderAnswersUseCase {
    private val repository: AnswerInterface = AnswerRepositoryImpl()
    private val getAllAnswersUseCase = GetAllAnswersUseCase(repository)
    private val getAnswersByIdUseCase = GetAnswersByIdUseCase(repository)
    private val isAnswerCorrectUseCase = IsAnswerCorrectUseCase(repository)

    suspend fun getAllAnswers(): List<AnswerResponseDto> = getAllAnswersUseCase()
    suspend fun getAnswerById(id: Int): AnswerResponseDto? {
        return getAnswersByIdUseCase(id)
    }

    suspend fun isAnswerCorrect(questionId: Int, answerId: Int): Boolean {
        return isAnswerCorrectUseCase(questionId, answerId)
    }
}