package domain.usecase.answers

import data.repositories.AnswerRepositoryImpl
import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerInterface

object ProviderAnswersUseCase {
    private val repository: AnswerInterface = AnswerRepositoryImpl()
    private val getAllAnswersUseCase = GetAllAnswersUseCase(repository)
    private val getAnswersByIdUseCase = GetAnswersByIdUseCase(repository)

    suspend fun getAllAnswers(): List<AnswerResponseDto> = getAllAnswersUseCase()
    suspend fun getAnswerById(id: Int): AnswerResponseDto?{
        return getAnswersByIdUseCase(id)
    }
}