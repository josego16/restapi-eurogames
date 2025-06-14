package domain.usecase.answers

import data.repositories.AnswerRepositoryImpl
import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerRepository

/**
 * Clase que agrupa y provee acceso a los casos de uso relacionados con [domain.models.Answer].
 *
 * Facilita la inyección y organización centralizada de lógica de negocio para respuestas.
 */
object ProviderAnswersUseCase {
    private val repository: AnswerRepository = AnswerRepositoryImpl()
    private val getAllAnswersUseCase = GetAllAnswersUseCase(repository)
    private val getAnswerByIdUseCase = GetAnswerByIdUseCase(repository)
    private val isAnswerCorrectUseCase = IsAnswerCorrectUseCase(repository)

    suspend fun getAllAnswers(): List<AnswerResponseDto> = getAllAnswersUseCase()
    suspend fun getAnswerById(id: Int): AnswerResponseDto? {
        return getAnswerByIdUseCase(id)
    }

    suspend fun isAnswerCorrect(questionId: Int, answerId: Int): Boolean {
        return isAnswerCorrectUseCase(questionId, answerId)
    }
}