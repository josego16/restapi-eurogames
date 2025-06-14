package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

/**
 * Caso de uso para obtener una pregunta con sus respuestas por ID.
 *
 * @property repository Repositorio de preguntas.
 */
class GetQuestionWithAnswerByIdUseCase(private val repository: QuestionRepository) {

    /**
     * Ejecuta la búsqueda de una pregunta con respuestas asociadas por su ID.
     *
     * @param id ID de la pregunta.
     * @return [QuestionWithAnswersDto] o `null` si no se encuentra.
     */
    suspend operator fun invoke(id: Int): QuestionWithAnswersDto? {
        return repository.getQuestionWithAnswersById(id)?.toDto()
    }
}