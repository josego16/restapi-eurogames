package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

/**
 * Caso de uso para obtener todas las preguntas con sus respuestas asociadas.
 *
 * @property repository Repositorio de preguntas.
 */
class GetQuestionsWithAnswersUseCase(private val repository: QuestionRepository) {

    /**
     * Ejecuta la recuperación de preguntas junto con sus respuestas.
     *
     * @return Lista de [QuestionWithAnswersDto].
     */
    suspend operator fun invoke(): List<QuestionWithAnswersDto> {
        return repository.getAllQuestionWithAnswers().map { it.toDto() }
    }
}