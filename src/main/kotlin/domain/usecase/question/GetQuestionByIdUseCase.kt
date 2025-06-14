package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener una pregunta por su ID.
 *
 * @property repository Repositorio de preguntas.
 */
class GetQuestionByIdUseCase(private val repository: QuestionRepository) {

    /**
     * Ejecuta la búsqueda de una pregunta por su identificador.
     *
     * @param id ID de la pregunta.
     * @return [QuestionResponseDto] o `null` si no existe.
     */
    suspend operator fun invoke(id: Int): QuestionResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}