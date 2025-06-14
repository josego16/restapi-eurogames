package domain.usecase.question

import domain.dto.QuestionResponseDto
import domain.interfaces.QuestionRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener todas las preguntas.
 *
 * Recupera todas las preguntas del repositorio y las transforma en DTOs.
 *
 * @property repository Repositorio de preguntas.
 */
class GetAllQuestionsUseCase(private val repository: QuestionRepository) {
    /**
     * Ejecuta el caso de uso.
     *
     * @return Lista de [QuestionResponseDto].
     */
    suspend operator fun invoke(): List<QuestionResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}